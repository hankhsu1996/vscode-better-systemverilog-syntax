// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: structure-arrays-illegal
:description: Structure array assignment tests
:should_fail_because: C-like assignment is illegal
:tags: 5.10
:type: simulation elaboration
*/
module top();
  typedef struct {
    int a;
    int b;
  } ms_t;

  /* C-like assignment is illegal */
  ms_t ms[1:0] = '{0, 0, 1, 1};
//               ^^ punctuation.section.braces.begin.sv
//                 ^ constant.numeric.integer.sv
//                  ^ punctuation.separator.comma.sv
//                    ^ constant.numeric.integer.sv
//                     ^ punctuation.separator.comma.sv
//                       ^ constant.numeric.integer.sv
//                        ^ punctuation.separator.comma.sv
//                          ^ constant.numeric.integer.sv
//                           ^ punctuation.section.braces.end.sv
endmodule
