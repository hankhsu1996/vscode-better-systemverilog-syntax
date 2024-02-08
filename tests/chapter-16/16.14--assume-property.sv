// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assume_property_test
:description: assume property test
:tags: 16.14
*/
module top();

logic clk;
logic a;

  assume property ( @(posedge clk) (a == 1));
//^^^^^^ keyword.control.assume.sv
//       ^^^^^^^^ keyword.control.property.sv

endmodule
