// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pure_constraint_3
:description: pure constraint test
:tags: 18.5.2
*/

virtual class a;
    pure constraint c;
endclass

virtual class a2 extends a;
endclass
