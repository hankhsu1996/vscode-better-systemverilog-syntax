// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic-arrays-op-delete
:description: Test dynamic arrays operator delete support
:tags: 7.5.3
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr[];

initial begin
  arr = new [ 16 ];
//      ^^^ entity.name.function.sv
//          ^ punctuation.section.brackets.begin.sv
//            ^^ constant.numeric.integer.sv
//               ^ punctuation.section.brackets.end.sv
  $display(":assert: (%d == 16)", arr.size);
  arr.delete;
//    ^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 0)", arr.size);
end

endmodule
