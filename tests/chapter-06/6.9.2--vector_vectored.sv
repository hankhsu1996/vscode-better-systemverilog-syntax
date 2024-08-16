// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: vector_vectored
:description: vectored vector tests
:tags: 6.9.2
*/
module top();
  tri1 vectored [15:0] a;
//^^^^ entity.name.type.tri1.sv
//     ^^^^^^^^ storage.modifier.vectored.sv
endmodule
