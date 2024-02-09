// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: set_membership_0
:description: set membership test
:tags: 18.5.3
*/

class a;
    rand int b;
    constraint c { b inside {3, 10}; }
//                 ^ variable.other.sv
//                   ^^^^^^ keyword.other.inside.sv
//                          ^^^^^^^ meta.concatenation.sv
//                                 ^ punctuation.terminator.semicolon.sv
endclass
