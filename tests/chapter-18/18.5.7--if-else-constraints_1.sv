// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_constraints_1
:description: if-else constraints test
:tags: 18.5.7
*/

class a;
    rand int b1, b2;
    constraint c1 { b1 == 5; }
    constraint c2 { if (b1 == 0) b2 == 10;
//                  ^^ keyword.control.if.sv
//                     ^ punctuation.section.group.begin.sv
//                      ^^ variable.other.sv
//                         ^^ keyword.operator.binary.sv
//                            ^ constant.numeric.integer.sv
//                             ^ punctuation.section.group.end.sv
//                               ^^ variable.other.sv
//                                  ^^ keyword.operator.binary.sv
//                                     ^^ constant.numeric.integer.sv
//                                       ^ punctuation.terminator.semicolon.sv
                    else b2 == 15;}
//                  ^^^^ keyword.control.else.sv
//                       ^^ variable.other.sv
//                          ^^ keyword.operator.binary.sv
//                             ^^ constant.numeric.integer.sv
//                               ^ punctuation.terminator.semicolon.sv
endclass
