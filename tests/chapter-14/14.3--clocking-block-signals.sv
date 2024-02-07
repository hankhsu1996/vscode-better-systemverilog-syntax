// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: clocking_block_signals
:description: clocking block with signals test
:tags: 14.3
*/
module top(input clk, input a, output logic b, output logic c);

clocking ck1 @(posedge clk);
  default input #10ns output #5ns;
  input a;
  output b;
  output #3ns c;
endclocking

always_ff @(posedge clk) begin
  b <= a;
  c <= a;
end

endmodule
