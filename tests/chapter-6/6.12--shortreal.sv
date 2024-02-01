// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: shortreal
:description: shortreal type tests
:tags: 6.12
*/
module top();
  shortreal a = 0.5;
//^^^^^^^^^ entity.name.type.shortreal.sv
endmodule
