// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: explicit_external_constraint_1
:description: explicit external constraint test
:should_fail_because: explicit contraint needs to be defined
:tags: 18.5.1
:type: simulation elaboration
*/

class a;
    rand int b;
    extern constraint c;
//  ^^^^^^ storage.modifier.extern.sv
//         ^^^^^^^^^^ storage.type.constraint.sv
//                    ^ variable.other.sv
//                     ^ punctuation.terminator.semicolon.sv
endclass
