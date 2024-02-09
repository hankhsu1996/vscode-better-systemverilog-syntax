// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: static_constraint_blocks_0
:description: static constraint blocks test
:tags: 18.5.11
*/

class a;
    rand int b;

    static constraint c1 { b == 5; }
//  ^^^^^^ storage.modifier.static.sv
//         ^^^^^^^^^^ storage.type.constraint.sv
endclass


