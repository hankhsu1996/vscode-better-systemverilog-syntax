// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_multiple_assignments
:description: Variable multiple assignments tests
:should_fail_because: it shall be an error to have multiple continuous assignments
:tags: 6.5
:type: simulation elaboration
*/
module top();
  int v;

  assign v = 12;
//^^^^^^ keyword.control.assign.sv
  assign v = 13;
//^^^^^^ keyword.control.assign.sv
endmodule
