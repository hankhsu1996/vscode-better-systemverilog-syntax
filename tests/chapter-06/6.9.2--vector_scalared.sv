// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: vector_scalared
:description: scalared vector tests
:tags: 6.9.2
*/
module top();
  tri1 scalared [15:0] a = 0;
//^^^^ entity.name.type.sv
//     ^^^^^^^^ storage.modifier.scalared.sv
endmodule
