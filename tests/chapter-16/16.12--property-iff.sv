// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: property_iff_test
:description: property iff test
:tags: 16.12
*/
module top();

logic clk;
logic a;
logic b;

assert property ( @(posedge clk) a iff b );
//                                 ^^^ keyword.control.iff.sv

endmodule
