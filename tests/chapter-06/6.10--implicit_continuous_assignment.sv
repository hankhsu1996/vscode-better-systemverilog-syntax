// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implicit_continuous_assignment
:description: implicit declaration in continuous assignment tests
:tags: 6.10
*/
module top();
  wire [3:0] a = 8;
  wire [3:0] b = 5;

  assign c = | (a | b);
//^^^^^^ keyword.control.assign.sv
endmodule
