// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: distribution_0
:description: distribution test
:tags: 18.5.4
*/

class a;
    rand int b;
    constraint c { b dist {3 := 1, 10 := 2}; }
//                 ^ variable.other.sv
//                   ^^^^ keyword.other.dist.sv
//                        ^ punctuation.section.braces.begin.sv
//                         ^ constant.numeric.integer.sv
//                           ^^ keyword.operator.dist.sv
//                              ^ constant.numeric.integer.sv
//                               ^ punctuation.separator.comma.sv
//                                 ^^ constant.numeric.integer.sv
//                                    ^^ keyword.operator.dist.sv
//                                       ^ constant.numeric.integer.sv
//                                        ^ punctuation.section.braces.end.sv
//                                         ^ punctuation.terminator.semicolon.sv

endclass
