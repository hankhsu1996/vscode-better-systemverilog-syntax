// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: behavior_of_randomization_methods_0
:description: static random variables test
:tags: 18.6.3
*/

class a;
    static rand int b;
//  ^^^^^^ storage.modifier.static.sv
//         ^^^^ storage.modifier.rand.sv
    constraint c { b > 5; b < 12; }
endclass
