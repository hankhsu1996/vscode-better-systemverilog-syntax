// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_concat_op_sim
:description: minimal concatenation operator simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.4.12
*/
module top(input [1:0] a, input [1:0] b, output [3:0] c);

assign c = {a, b};
//         ^^^^^^ meta.concatenation.sv
//         ^ punctuation.section.braces.begin.sv
//          ^ variable.other.sv
//           ^ punctuation.separator.comma.sv
//             ^ variable.other.sv
//              ^ punctuation.section.braces.end.sv

endmodule
