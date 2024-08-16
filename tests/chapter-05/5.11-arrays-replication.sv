// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: arrays-replication
:description: Basic arrays test
:tags: 5.11
*/
module top();
  int n[1:2][1:6] = '{2{'{3{4, 5}}}};
//                  ^^ punctuation.section.braces.begin.sv
//                    ^ constant.numeric.integer.sv
//                     ^ punctuation.section.braces.begin.sv
//                      ^^ punctuation.section.braces.begin.sv
//                        ^ constant.numeric.integer.sv
//                         ^ punctuation.section.braces.begin.sv
//                          ^ constant.numeric.integer.sv
//                           ^ punctuation.separator.comma.sv
//                             ^ constant.numeric.integer.sv
//                              ^ punctuation.section.braces.end.sv
//                               ^ punctuation.section.braces.end.sv
//                                ^ punctuation.section.braces.end.sv
//                                 ^ punctuation.section.braces.end.sv
endmodule
