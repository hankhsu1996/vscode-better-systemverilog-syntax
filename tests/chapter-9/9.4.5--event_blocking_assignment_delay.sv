// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_blocking_assignment_delay
:description: event blk assignment delay
:tags: 9.4.5
*/
module block_tb ();
  reg a = 0;
  reg b = 1;

  initial begin
    a = #10 b;
//  ^ variable.other.sv
//    ^ keyword.operator.assignment.sv
//      ^ punctuation.definition.delay.sv
//       ^^ constant.numeric.integer.sv
//          ^ variable.other.sv
  end
endmodule
