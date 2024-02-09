// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pure_constraint_0
:description: pure constraint test
:tags: 18.5.2
*/

virtual class a;
    pure constraint c;
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^^^^ storage.type.constraint.sv
//                  ^ variable.other.sv

endclass

class a2 extends a;
    rand int b2;
    constraint c { b2 == 5; }
//  ^^^^^^^^^^ storage.type.constraint.sv
//             ^ variable.other.sv
endclass
