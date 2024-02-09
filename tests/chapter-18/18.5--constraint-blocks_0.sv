// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constraint_blocks_0
:description: constraint blocks test
:tags: 18.5
*/

class a;
    rand int b;
    constraint c { b == 0; }
//  ^^^^^^^^^^ storage.type.constraint.sv
//             ^ variable.other.sv
//               ^ punctuation.section.braces.begin.sv
//                 ^ variable.other.sv
//                   ^^ keyword.operator.binary.sv
//                      ^ constant.numeric.integer.sv
//                       ^ punctuation.terminator.semicolon.sv
//                         ^ punctuation.section.braces.end.sv
endclass
