// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constraint_guards_0
:description: constraint guards test
:tags: 18.5.13
*/

class b;
    int d1;
endclass

class a;
    rand int b1;
    b next;

    constraint c1 { if (next == null) b1 == 5; }
//                  ^^ keyword.control.if.sv
//                      ^^^^ variable.other.sv
//                              ^^^^ constant.language.null.sv

endclass
