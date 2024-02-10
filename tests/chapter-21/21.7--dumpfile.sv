// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: vcd_dump_test
:description: vcd dump tests
:tags: 21.7
:type: simulation elaboration parsing
*/
module top();

integer i;

initial begin
  $dumpfile("out.vcd");
//^^^^^^^^^ entity.name.function.sv
//          ^^^^^^^^^ string.quoted.double.sv
  $dumpvars;
//^^^^^^^^^ entity.name.function.sv
  $dumplimit(1024*1024);
//^^^^^^^^^^ entity.name.function.sv
//           ^^^^ constant.numeric.integer.sv
//                ^^^^ constant.numeric.integer.sv

  i = 1;
  #100 i = 2;
  #200 $dumpoff;
//     ^^^^^^^^ entity.name.function.sv
  i = 3;
  #800 $dumpon;
//     ^^^^^^^ entity.name.function.sv
  i = 4;
  #100 $dumpflush;
//     ^^^^^^^^^^ entity.name.function.sv
  i = 5;
  #300 $dumpall;
//     ^^^^^^^^ entity.name.function.sv
  i = 6;
end

endmodule
