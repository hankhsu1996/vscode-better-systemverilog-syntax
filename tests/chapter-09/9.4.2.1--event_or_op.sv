// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_or_op
:description: event or operator
:tags: 9.4.2.1
*/
module block_tb ();
  wire a = 0;
  wire b = 0;
  wire c = 0;
  wire d = 0;
  reg out;
  always @(a or b or c or d)
//         ^ variable.other.sv
//           ^^ keyword.other.or.sv
//              ^ variable.other.sv
//                ^^ keyword.other.or.sv
    out = (a | b) & (c | d);
endmodule
