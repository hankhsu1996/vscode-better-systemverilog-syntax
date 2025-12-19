// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: rand_modifier
:description: rand modifier test
:tags: 18.4.1
*/

class a;
    rand int b;
//  ^^^^ storage.modifier.rand.sv
//       ^^^ entity.name.type.sv
//           ^ variable.other.sv
endclass
