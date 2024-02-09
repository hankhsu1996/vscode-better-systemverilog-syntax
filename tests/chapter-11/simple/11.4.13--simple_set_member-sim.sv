// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_set_member_sim
:description: minimal inside operator simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.4.13
*/
module top(input [3:0] a, output b);

assign b = (a inside {2, 3, 4, 5});
//         ^ punctuation.section.group.begin.sv
//          ^ variable.other.sv
//            ^^^^^^ keyword.other.inside.sv
//                   ^^^^^^^^^^^^ meta.concatenation.sv
//                               ^ punctuation.section.group.end.sv

endmodule
