// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-allocating-elements
:description: Test associative arrays elements allocation
:tags: 7.8.7 7.8 7.9.1
:type: simulation elaboration parsing
*/
module top ();

int arr [ int ];

initial begin
  $display(":assert: (%d == 0)", arr.size);
  arr[10] = 10;
//^^^ variable.other.sv
//   ^^^ meta.dimension.sv
//        ^ keyword.operator.assignment.sv
//          ^^ constant.numeric.integer.sv
  $display(":assert: (%d == 1)", arr.size);
end

endmodule
