// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: simple_unpack_stream_sim
:description: minimal stream unpack simulation test (without result verification)
:type: simulation elaboration parsing
:tags: 11.4.14.3
*/
module top(input [1:0] a, input [1:0] b, input [1:0] c, output [5:0] d);

  assign d = {<<2 {a, b, c}};
//           ^^^^^^^^^^^^^^^ meta.concatenation.sv
//           ^ punctuation.section.braces.begin.sv
//            ^^ keyword.operator.stream.sv
//              ^ constant.numeric.integer.sv
//                ^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv

endmodule
