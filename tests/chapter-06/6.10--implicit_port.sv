// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implicit_port
:description: implicit port signal tests
:tags: 6.10
*/
module top(input [3:0] a, input [3:0] b);
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.list-of-port-declarations.sv
//         ^^^^^ storage.modifier.input.sv
//               ^^^^^ meta.dimension.sv
//                     ^ variable.other.sv
//                      ^ punctuation.separator.comma.sv
//                        ^^^^^ storage.modifier.input.sv
//                              ^^^^^ meta.dimension.sv
//                                    ^ variable.other.sv
//                                     ^ punctuation.section.group.end.sv
//                                      ^ punctuation.terminator.semicolon.sv

  wire [3:0] c;
  assign c = a | b;
endmodule
