// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: explicit_external_constraint_0
:description: explicit external constraint test
:tags: 18.5.1
*/

class a;
    rand int b;
    extern constraint c;
//  ^^^^^^ storage.modifier.extern.sv
//         ^^^^^^^^^^ storage.type.constraint.sv
//                    ^ variable.other.sv
//                     ^ punctuation.terminator.semicolon.sv
endclass

  constraint a::c { b == 0; }
//^^^^^^^^^^ storage.type.constraint.sv
//           ^ entity.name.namespace.sv
//            ^^ punctuation.separator.scope-resolution.sv
//              ^ variable.other.sv
//                ^ punctuation.section.braces.begin.sv
//                  ^ variable.other.sv
//                    ^^ keyword.operator.binary.sv
//                       ^ constant.numeric.integer.sv
//                        ^ punctuation.terminator.semicolon.sv
//                          ^ punctuation.section.braces.end.sv
