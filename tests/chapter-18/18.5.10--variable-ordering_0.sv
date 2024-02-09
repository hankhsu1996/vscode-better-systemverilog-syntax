// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_ordering_0
:description: variable ordering test
:tags: 18.5.10
*/

class a;
    rand bit b1;
    rand int b2;

    constraint c1 { b1 -> b2 == 0; }
    constraint c2 { solve b1 before b2; }
//                  ^^^^^ keyword.control.solve.sv
//                        ^^ variable.other.sv
//                           ^^^^^^ keyword.control.before.sv
//                                  ^^ variable.other.sv
//                                    ^ punctuation.terminator.semicolon.sv
endclass

