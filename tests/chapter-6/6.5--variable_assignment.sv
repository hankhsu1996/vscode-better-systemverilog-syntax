// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_assignment
:description: Variable assignment tests
:tags: 6.5
*/
module top();
  int v;

  assign v = 12;
//^^^^^^ keyword.control.assign.sv
endmodule
