// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: expect_test
:description: expect test
:tags: 16.17
*/

module top();

logic clk;
logic a;
logic b;

initial begin
    expect (@(posedge clk) a ##1 b);
//  ^^^^^^ keyword.control.expect.sv
end

endmodule
