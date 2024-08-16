// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_mixed_assignments
:description: Variable mixed assignments tests
:should_fail_because: mixing procedural and continuous assignments is illegal
:tags: 6.5
:type: simulation elaboration
*/
module top();
  wire clk = 0;
  int v;

  assign v = 12;
//^^^^^^ keyword.control.assign.sv
  always @(posedge clk) v <= ~v;
endmodule
