// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: non_blocking_assignment
:description: non-blocking assignment test
:tags: 10.4.2
*/
module top();

logic a;

initial begin
  a <= 2;
//^ variable.other.sv
//  ^^ keyword.operator.assignment.sv
//     ^ constant.numeric.integer.sv
end

endmodule
