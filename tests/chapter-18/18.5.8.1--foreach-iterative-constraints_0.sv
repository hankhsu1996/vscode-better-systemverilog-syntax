// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: foreach_iterative_constraints_0
:description: foreach iterative constraints test
:tags: 18.5.8.1
*/

class a;
    rand int B[5];
    constraint c { foreach ( B [ i ] ) B[i] == 5; }
//                 ^^^^^^^ keyword.control.foreach.sv
//                         ^ punctuation.section.group.begin.sv
//                           ^ variable.other.constant.sv
//                             ^ punctuation.section.brackets.begin.sv
//                               ^ variable.other.sv
//                                 ^ punctuation.section.brackets.end.sv
//                                   ^ punctuation.section.group.end.sv
//                                     ^ variable.other.constant.sv
//                                      ^ punctuation.section.brackets.begin.sv
//                                       ^ variable.other.sv
//                                        ^ punctuation.section.brackets.end.sv
//                                          ^^ keyword.operator.binary.sv
//                                             ^ constant.numeric.integer.sv
//                                              ^ punctuation.terminator.semicolon.sv
endclass
