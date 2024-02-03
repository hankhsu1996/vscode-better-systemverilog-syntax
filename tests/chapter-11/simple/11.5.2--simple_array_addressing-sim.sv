// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_array_addressing_sim
:description: minimal array addressing simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.5.2
*/
module top(input [7:0] a, output [7:0] b);

reg [7:0] mem [0:255];
//  ^^^^^ meta.dimension.sv
//            ^^^^^^^ meta.dimension.sv

assign b = mem[a];
//         ^^^ variable.other.sv
//            ^ punctuation.section.brackets.begin.sv
//             ^ variable.other.sv
//              ^ punctuation.section.brackets.end.sv

endmodule
