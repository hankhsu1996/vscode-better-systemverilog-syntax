// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: global_constraints_0
:description: global constraints test
:tags: 18.5.9
*/

class a;
    rand int v;
endclass

class b;
    rand a aObj;
    rand int v;

    constraint c { aObj.v < v; }
endclass
