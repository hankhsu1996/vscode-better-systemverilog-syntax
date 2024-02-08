// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: sequence_test
:description: sequence test
:tags: 16.7
*/

module top();

logic clk;
logic a;
logic b;

sequence seq;
    @(posedge clk) a ##1 b;
endsequence

assert property (seq);

endmodule
