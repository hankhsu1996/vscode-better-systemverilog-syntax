// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pure_constraint_2
:description: pure constraint test
:should_fail_because: pure constraint must be implemented by non-virtual class
:tags: 18.5.2
:type: simulation elaboration
*/

virtual class a;
    pure constraint c;
endclass

class a2 extends a;
endclass
