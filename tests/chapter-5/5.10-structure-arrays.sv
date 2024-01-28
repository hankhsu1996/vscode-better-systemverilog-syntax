// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: structure-arrays
:description: Structure array assignment tests
:tags: 5.10
*/
module top();
  typedef struct {
    int a;
    int b;
  } ms_t;

  ms_t ms[1:0] = '{'{0, 0}, '{1, 1}};
//               ^^ punctuation.section.braces.begin.sv
//                 ^^ punctuation.section.braces.begin.sv
//                   ^ constant.numeric.integer.sv
//                    ^ punctuation.separator.comma.sv
//                      ^ constant.numeric.integer.sv
//                       ^ punctuation.section.braces.end.sv
//                        ^ punctuation.separator.comma.sv
//                          ^^ punctuation.section.braces.begin.sv
//                            ^ constant.numeric.integer.sv
//                             ^ punctuation.separator.comma.sv
//                               ^ constant.numeric.integer.sv
//                                ^ punctuation.section.braces.end.sv
//                                 ^ punctuation.section.braces.end.sv

endmodule
