// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: vcd_dumpports_test
:description: vcd dump ports tests
:tags: 21.7
:type: simulation elaboration parsing
*/
module top();

integer i;
string fname = "out.vcd";

initial begin
  $dumpports(top, fname);
//^^^^^^^^^^ entity.name.function.sv
//           ^^^ variable.other.sv
//                ^^^^^ variable.other.sv
  $dumpportslimit(1024*1024, fname);
//^^^^^^^^^^^^^^^ entity.name.function.sv
//                ^^^^ constant.numeric.integer.sv
//                     ^^^^ constant.numeric.integer.sv
//                           ^^^^^ variable.other.sv

  i = 1;
  #100 i = 2;
  #200 $dumpportsoff(fname);
  i = 3;
  #800 $dumpportson(fname);
  i = 4;
  #100 $dumpportsflush(fname);
  i = 5;
  #300 $dumpportsall(fname);
  i = 6;
end

endmodule
