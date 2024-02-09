// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constraint_inheritance_0
:description: contraint inheritance test
:tags: 18.5.2
*/

class a;
    rand int b;
    constraint c { b == 5; };
//  ^^^^^^^^^^ storage.type.constraint.sv
//             ^ variable.other.sv
//               ^ punctuation.section.braces.begin.sv
//                 ^ variable.other.sv
//                   ^^ keyword.operator.binary.sv
//                      ^ constant.numeric.integer.sv
//                       ^ punctuation.terminator.semicolon.sv
//                         ^ punctuation.section.braces.end.sv
endclass

class a2 extends a;
//       ^^^^^^^ storage.modifier.extends.sv
    rand int b2;
    constraint c2 { b2 == b; }
//  ^^^^^^^^^^ storage.type.constraint.sv
//             ^^ variable.other.sv

endclass
