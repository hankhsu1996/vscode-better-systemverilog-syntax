// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implicit_external_constraint_0
:description: implicit external constraint test
:tags: 18.5.1
*/

class a;
    rand int b;
    constraint c;
//  ^^^^^^^^^^ storage.type.constraint.sv
//             ^ variable.other.sv
//              ^ punctuation.terminator.semicolon.sv
endclass

  constraint a::c { b == 0; }
//^^^^^^^^^^ storage.type.constraint.sv
//           ^ entity.name.namespace.sv
//            ^^ punctuation.separator.scope-resolution.sv
//              ^ variable.other.sv

