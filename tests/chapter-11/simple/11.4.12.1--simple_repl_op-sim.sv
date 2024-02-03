// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_repl_op_sim
:description: minimal replication operator simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.4.12.1
*/
module top(input [1:0] a, output [15:0] b);

assign b = {8{a}};
//         ^^^^^^ meta.concatenation.sv
//         ^ punctuation.section.braces.begin.sv
//          ^ constant.numeric.integer.sv
//           ^ punctuation.section.braces.begin.sv
//            ^ variable.other.sv
//             ^ punctuation.section.braces.end.sv
//              ^ punctuation.section.braces.end.sv

endmodule
