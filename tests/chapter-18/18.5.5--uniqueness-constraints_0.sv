// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: uniqueness_constraints_0
:description: uniqueness constraints test
:tags: 18.5.5
*/

class a;
    rand int b1, b2;
    constraint c1 { b1 inside {3, 10}; }
    constraint c2 { b2 inside {3, 10}; }
    constraint c3 { unique {b1, b2}; }
//                  ^^^^^^ keyword.other.unique.sv
//                         ^ punctuation.section.braces.begin.sv
//                          ^^ variable.other.sv
//                            ^ punctuation.separator.comma.sv
//                              ^^ variable.other.sv
//                                ^ punctuation.section.braces.end.sv
//                                 ^ punctuation.terminator.semicolon.sv
endclass
