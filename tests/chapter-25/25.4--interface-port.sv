// SYNTAX TEST "source-text.sv"

interface simple_bus (input logic clk); // Define the interface
//                    ^^^^^ storage.modifier.input.sv
//                          ^^^^^ entity.name.type.sv
//                                ^^^ variable.other.sv
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
endinterface: simple_bus


module memMod (simple_bus a); // Uses just the interface
//             ^^^^^^^^^^ entity.name.type.sv
//                        ^ variable.other.sv
  logic avail;

  always @(posedge a.clk) // the clk signal from the interface
    a.gnt <= a.req & avail; // a.req is in the 'simple_bus' interface
endmodule


module cpuMod(simple_bus b);
//            ^^^^^^^^^^ entity.name.type.sv
//                       ^ variable.other.sv
endmodule


module top;
  logic clk = 0;
  simple_bus sb_intf1(clk); // Instantiate the interface
//^^^^^^^^^^ entity.name.type.sv
//           ^^^^^^^^ variable.other.sv
//                    ^^^ variable.other.sv
  simple_bus sb_intf2(clk); // Instantiate the interface
  memMod mem1(.a(sb_intf1)); // Reference simple_bus 1 to memory 1
  cpuMod cpu1(.b(sb_intf1));
  memMod mem2(.a(sb_intf2)); // Reference simple_bus 2 to memory 2
  cpuMod cpu2(.b(sb_intf2));
endmodule
