// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_cond_op_sim
:description: minimal ?: operator simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.4.11
*/
module top(input a, output b);

assign b = (a) ? 0 : 1;
//         ^ punctuation.section.group.begin.sv
//          ^ variable.other.sv
//           ^ punctuation.section.group.end.sv
//             ^ keyword.operator.ternary.sv
//               ^ constant.numeric.integer.sv
//                 ^ punctuation.separator.colon.sv
//                   ^ constant.numeric.integer.sv

endmodule
