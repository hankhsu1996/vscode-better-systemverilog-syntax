// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: discarding_soft_constraints_2
:description: discarding soft constraints test
:tags: 18.5.14.2
*/


class a;
    rand int b;

    constraint c1 {
        soft b > 4;
        soft b < 12; }

    constraint c2 { disable soft b; soft b == 20; }
//                  ^^^^^^^ keyword.control.disable.sv
//                          ^^^^ keyword.other.soft.sv
//                               ^ variable.other.sv
//                                  ^^^^ keyword.other.soft.sv
endclass
