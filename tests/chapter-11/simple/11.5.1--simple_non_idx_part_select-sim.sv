// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_non_idx_part_select_sim
:description: minimal non-indexed part-select bit simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.5.1
*/
module top(input [7:0] a, output [1:0] b);

assign b = a[7:6];
//         ^ variable.other.sv
//          ^^^^^ meta.dimension.sv
//          ^ punctuation.section.brackets.begin.sv
//           ^ constant.numeric.integer.sv
//            ^ punctuation.separator.colon.sv
//             ^ constant.numeric.integer.sv
//              ^ punctuation.section.brackets.end.sv

endmodule
