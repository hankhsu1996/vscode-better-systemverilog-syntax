// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_ordering_1
:description: variable ordering test
:should_fail_because: randc vars are not allowed, they are always solved before any other
:tags: 18.5.10
:type: simulation elaboration
*/

class a;
    rand bit b1;
    randc int b2;

    constraint c1 { b1 -> b2 == 0; }
    constraint c2 { solve b1 before b2; }
endclass

