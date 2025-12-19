// SYNTAX TEST "source-text.sv"

// 25.7.1 Example of using tasks in interface
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;

  task masterRead(input logic [7:0] raddr); // masterRead method
//^^^^ storage.type.task.sv
//     ^^^^^^^^^^ entity.name.function.sv
  endtask: masterRead
//^^^^^^^ storage.type.task.sv
//         ^^^^^^^^^^ entity.name.function.sv

  task slaveRead; // slaveRead method
  endtask: slaveRead

endinterface: simple_bus

module memMod (interface a); // Uses any interface
  logic avail;

  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail // the gnt and req signals in the interface

  always @(a.start)
    a.slaveRead();
//    ^^^^^^^^^ entity.name.function.sv
endmodule

module cpuMod(interface b);
  enum {read, write} instr;
  logic [7:0] raddr;

  always @(posedge b.clk)
    if (instr == read)
      b.masterRead(raddr); // call the Interface method
endmodule

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  memMod mem(sb_intf);
  cpuMod cpu(sb_intf);
endmodule


// 25.7.2 Example of using tasks in modports
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;

  modport slave (input req, addr, mode, start, clk,
    output gnt, rdy,
    ref data,
    import slaveRead, slaveWrite);
//  ^^^^^^ keyword.control.import.sv
//         ^^^^^^^^^ entity.name.function.sv
//                    ^^^^^^^^^^ entity.name.function.sv

  modport master(input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data,
    import masterRead, masterWrite);

  task masterRead(input logic [7:0] raddr); // masterRead method
  endtask

  task slaveRead; // slaveRead method
  endtask

  task masterWrite(input logic [7:0] waddr);
  endtask

  task slaveWrite;
  endtask
endinterface: simple_bus

module memMod(interface a); // Uses just the interface
  logic avail;
  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail; // the gnt and req signals in the interface

  always @(a.start)
    if (a.mode[0] == 1'b0)
      a.slaveRead();
//      ^^^^^^^^^ entity.name.function.sv
    else
      a.slaveWrite();
endmodule

module cpuMod(interface b);
  enum {read, write} instr;
  logic [7:0] raddr = $random();
  always @(posedge b.clk)
    if (instr == read)
      b.masterRead(raddr); // call the Interface method
    else
      b.masterWrite(raddr);
endmodule

module omniMod( interface b);
endmodule: omniMod

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  memMod mem(sb_intf.slave); // only has access to the slave tasks
  cpuMod cpu(sb_intf.master); // only has access to the master tasks
  omniMod omni(sb_intf); // has access to all master and slave tasks
endmodule


// 25.7.3 Example of exporting tasks and functions
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
  modport slave( input req, addr, mode, start, clk,
    output gnt, rdy,
    ref data,
    export Read,
//  ^^^^^^ keyword.control.export.sv
//         ^^^^ entity.name.function.sv
      Write);
//    ^^^^^ entity.name.function.sv
  modport master(input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data,
    import task Read(input logic [7:0] raddr),
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.task-prototype.sv
//  ^^^^^^ keyword.control.import.sv
//         ^^^^ storage.type.task.sv
//              ^^^^ entity.name.function.sv
//                   ^^^^^ storage.modifier.input.sv
//                         ^^^^^ entity.name.type.sv
//                               ^^^^^ meta.dimension.sv
    task Write(input logic [7:0] waddr));
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.task-prototype.sv
endinterface: simple_bus

module memMod(interface a); // Uses just the interface keyword
  logic avail;

  task a.Read; // Read method
//     ^ variable.other.sv
//       ^^^^ entity.name.function.sv
  endtask

  task a.Write;
  endtask
endmodule

module cpuMod(interface b);
  enum {read, write} instr;
  logic [7:0] raddr;
  always @(posedge b.clk)
    if (instr == read)
      b.Read(raddr); // call the slave method via the interface
    else
      b.Write(raddr);
endmodule

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  memMod mem(sb_intf.slave); // exports the Read and Write tasks
  cpuMod cpu(sb_intf.master); // imports the Read and Write tasks
endmodule


// 25.7.4 Example of multiple task exports
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
  int slaves = 0;

  // tasks executed concurrently as a fork-join block
  extern forkjoin task countSlaves();
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^^^ storage.modifier.forkjoin.sv
//                ^^^^ storage.type.task.sv
//                     ^^^^^^^^^^^ entity.name.function.sv
  extern forkjoin task Read (input logic [7:0] raddr);
  extern forkjoin task Write (input logic [7:0] waddr);

  modport slave (input req,addr, mode, start, clk,
    output gnt, rdy,
    ref data, slaves,
    export Read, Write, countSlaves);

  modport master ( input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data,
    import task Read(input logic [7:0] raddr),
    task Write(input logic [7:0] waddr));

  initial begin
    slaves = 0;
    countSlaves;
    $display ("number of slaves = %d", slaves);
  end
endinterface: simple_bus

module memMod #(parameter int minaddr=0, maxaddr=0;) (interface a);
  logic avail = 1;
  logic [7:0] mem[255:0];

  task a.countSlaves();
    a.slaves++;
  endtask

  task a.Read(input logic [7:0] raddr); // Read method
    if (raddr >= minaddr && raddr <= maxaddr) begin
      avail = 0;
      #10 a.data = mem[raddr];
      avail = 1;
    end
  endtask

  task a.Write(input logic [7:0] waddr); // Write method
    if (waddr >= minaddr && waddr <= maxaddr) begin
      avail = 0;
      #10 mem[waddr] = a.data;
        avail = 1;
    end
  endtask
endmodule

module cpuMod(interface b);
  typedef enum {read, write} instr;
  instr inst;
  logic [7:0] raddr;
  integer seed;

  always @(posedge b.clk) begin
    inst = instr'($dist_uniform(seed, 0, 1));
    raddr = $dist_uniform(seed, 0, 3);
    if (inst == read) begin
      $display("%t begin read %h @ %h", $time, b.data, raddr);
      callr:b.Read(raddr);
      $display("%t end read %h @ %h", $time, b.data, raddr);
    end
    else begin
      $display("%t begin write %h @ %h", $time, b.data, raddr);
      b.data = raddr;
      callw:b.Write(raddr);
      $display("%t end write %h @ %h", $time, b.data, raddr);
    end
  end
endmodule

module top;
  logic clk = 0;

  function void interrupt();
    disable mem1.a.Read; // task via module instance
    disable sb_intf.Write; // task via interface instance
    if (mem1.avail == 0) $display ("mem1 was interrupted");
    if (mem2.avail == 0) $display ("mem2 was interrupted");
  endfunction

  always #5 clk++;
    initial begin
      #28 interrupt();
      #10 interrupt();
      #100 $finish;
    end

  simple_bus sb_intf(clk);
  memMod #(0, 127) mem1(sb_intf.slave);
  memMod #(128, 255) mem2(sb_intf.slave);
  cpuMod cpu(sb_intf.master);
endmodule

// Misc: extern function
interface Test;
  extern function void foo();
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^^^ storage.type.function.sv
//                ^^^^ entity.name.type.sv
//                     ^^^ entity.name.function.sv

  extern function my_type foo();
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^^^ storage.type.function.sv
//                ^^^^^^^ entity.name.type.sv
//                        ^^^ entity.name.function.sv

  extern task foo();
//^^^^^^ storage.modifier.extern.sv
//       ^^^^ storage.type.task.sv
//            ^^^ entity.name.function.sv
endinterface
