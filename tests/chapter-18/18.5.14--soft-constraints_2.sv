// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: soft_constraints_2
:description: soft constraints test
:should_fail_because: Soft constraints can only be specified on random variables; they may not be specified for randc variables.
:tags: 18.5.14
:type: simulation elaboration
*/


class a;
    randc int b;
//  ^^^^^ storage.modifier.randc.sv

    constraint c {
        soft b > 4;
        soft b < 12; }
endclass
