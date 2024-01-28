// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: structure-replication
:description: Structure replication assignment tests
:tags: 5.10
*/
module top();
  struct {int X,Y,Z;} XYZ = '{3{1}};
  typedef struct {int a,b[4];} ab_t;
  int a,b,c;

  initial begin
    ab_t v1[1:0] [2:0];
    v1 = '{2{'{3{'{a,'{2{b,c}}}}}}};
//       ^^ punctuation.section.braces.begin.sv
//         ^ constant.numeric.integer.sv
//          ^ punctuation.section.braces.begin.sv
//           ^^ punctuation.section.braces.begin.sv
//             ^ constant.numeric.integer.sv
//              ^ punctuation.section.braces.begin.sv
//               ^^ punctuation.section.braces.begin.sv
//                 ^ variable.other.sv
//                  ^ punctuation.separator.comma.sv
//                   ^^ punctuation.section.braces.begin.sv
//                     ^ constant.numeric.integer.sv
//                      ^ punctuation.section.braces.begin.sv
//                       ^ variable.other.sv
//                        ^ punctuation.separator.comma.sv
//                         ^ variable.other.sv
//                          ^ punctuation.section.braces.end.sv
//                           ^ punctuation.section.braces.end.sv
//                            ^ punctuation.section.braces.end.sv
//                             ^ punctuation.section.braces.end.sv
//                              ^ punctuation.section.braces.end.sv
//                               ^ punctuation.section.braces.end.sv
//                                ^ punctuation.section.braces.end.sv
  end

endmodule
