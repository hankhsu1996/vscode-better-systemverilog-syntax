// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: soft_constraints_0
:description: soft constraints test
:tags: 18.5.14
*/


class a;
    rand int b;

    constraint c {
        soft b > 4;
//      ^^^^ keyword.other.soft.sv
        soft b < 12; }
//      ^^^^ keyword.other.soft.sv
endclass
