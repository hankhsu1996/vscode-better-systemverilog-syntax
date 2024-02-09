// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_constraints_3
:description: if-else constraints test
:tags: 18.5.7
*/

class a;
    rand int b1, b2, b3;
    constraint c1 { b1 == 5; }
    constraint c2 { b2 == 3; }
    constraint c3 { if (b1 == 0)
//                  ^^ keyword.control.if.sv
                      if (b2 == 2) b3 == 4;
//                    ^^ keyword.control.if.sv
                      else b3 == 10;}
//                    ^^^^ keyword.control.else.sv
endclass
