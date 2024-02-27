// SYNTAX TEST "source-text.sv"

interface i2;
  wire a, b, c, d;
  modport master (input a, b, output c, d);
//^^^^^^^ storage.type.modport.sv
//        ^^^^^^ entity.name.type.sv
//               ^ punctuation.section.group.begin.sv
//                ^^^^^ storage.modifier.input.sv
//                      ^ variable.other.sv
//                       ^ punctuation.separator.comma.sv
//                         ^ variable.other.sv
//                          ^ punctuation.separator.comma.sv
//                            ^^^^^^ storage.modifier.output.sv
//                                   ^ variable.other.sv
//                                    ^ punctuation.separator.comma.sv
//                                      ^ variable.other.sv
//                                       ^ punctuation.section.group.end.sv
  modport slave (output a, b, input c, d);
endinterface

module m (i2.master i);
//        ^^ entity.name.type.sv
//           ^^^^^^ entity.name.type.sv
//                  ^ variable.other.sv
endmodule

module s (i2.slave i);
endmodule

module top;
  i2 i();
  m u1(.i(i));
  s u2(.i(i));
endmodule


// 25.5.1 Example of named port bundle
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;

  modport slave (
    input req, addr, mode, start, clk,
    output gnt, rdy,
    ref data
  );

  modport master(
    input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data
  );
endinterface: simple_bus


module memMod (simple_bus.slave a); // interface name and modport name
  logic avail;
  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail; // the gnt and req signal in the interface
endmodule

module cpuMod (simple_bus.master b);
endmodule

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  initial repeat(10) #10 clk++;
  memMod mem(.a(sb_intf)); // Connect the interface to the module instance
  cpuMod cpu(.b(sb_intf));
endmodule


// 25.5.2 Example of connecting port bundle
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
  modport slave (input req, addr, mode, start, clk,
    output gnt, rdy,
    ref data);
  modport master(input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data);
endinterface: simple_bus

module memMod(simple_bus a); // Uses just the interface name
  logic avail;
  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail; // the gnt and req signal in the interface
endmodule

module cpuMod(simple_bus b);
endmodule

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  initial repeat(10) #10 clk++;
  memMod mem(sb_intf.slave); // Connect the modport to the module instance
//                   ^^^^^ variable.other.sv
  cpuMod cpu(sb_intf.master);
endmodule


// 25.5.3 Example of connecting port bundle to generic interface
interface simple_bus (input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
  modport slave (input req, addr, mode, start, clk,
    output gnt, rdy,
    ref data);
  modport master(input gnt, rdy, clk,
    output req, addr, mode, start,
    ref data);
endinterface: simple_bus

module memMod(interface a); // Uses just the interface
//            ^^^^^^^^^ storage.type.interface.sv
//                      ^ variable.other.sv
  logic avail;
  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail; // the gnt and req signal in the interface
endmodule

module cpuMod(interface b);
endmodule

module top;
  logic clk = 0;
  simple_bus sb_intf(clk); // Instantiate the interface
  memMod mem(sb_intf.slave); // Connect the modport to the module instance
  cpuMod cpu(sb_intf.master);
endmodule


// 25.5.4 Modport expressions
interface I;
  logic [7:0] r;
  const int x=1;
  bit R;
  modport A (output .P(r[3:0]), input .Q(x), R);
//                  ^ punctuation.definition.named-port-connection.sv
//                   ^ variable.other.sv
//                     ^ variable.other.sv
//                      ^^^^^ meta.dimension.sv
//                                    ^ punctuation.definition.named-port-connection.sv
//                                     ^ variable.other.sv
//                                       ^ variable.other.sv
//                                           ^ variable.other.sv
  modport B (output .P(r[7:4]), input .Q(2), R);
endinterface

module M ( interface i);
  initial i.P = i.Q;
endmodule

module top;
  I i1 ();
  M u1 (i1.A);
  M u2 (i1.B);
  initial #1 $display("%b", i1.r); // displays 00100001
endmodule


// 25.5.5 Clocking blocks and modports
interface A_Bus( input logic clk );
  wire req, gnt;
  wire [7:0] addr, data;

  clocking sb @(posedge clk);
//^^^^^^^^ storage.type.clocking.sv
//         ^^ variable.other.sv
    input gnt;
    output req, addr;
    inout data;
    property p1; req ##[1:3] gnt; endproperty
  endclocking

  modport DUT ( input clk, req, addr, // Device under test modport
    output gnt,
    inout data );
  modport STB ( clocking sb ); // synchronous testbench modport
//              ^^^^^^^^ keyword.other.clocking.sv
//                       ^^ variable.other.sv

  modport TB ( input gnt, // asynchronous testbench modport
    output req, addr,
    inout data );
endinterface
