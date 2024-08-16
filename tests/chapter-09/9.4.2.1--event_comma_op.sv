// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_comma_op
:description: event comma operator
:tags: 9.4.2.1
*/
module block_tb ();
  wire a = 0;
  wire b = 0;
  wire c = 0;
  wire d = 0;
  reg out;
  always @(a, b, c, d)
//       ^^^^^^^^^^^^^ meta.event-control.sv
//         ^ variable.other.sv
//          ^ punctuation.separator.comma.sv
//            ^ variable.other.sv
//             ^ punctuation.separator.comma.sv
    out = (a | b) & (c | d);
endmodule
