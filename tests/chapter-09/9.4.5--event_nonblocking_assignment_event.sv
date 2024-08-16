// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_nonblocking_assignment_event
:description: event non blk assignment event
:tags: 9.4.5
*/
module block_tb ();
  reg a = 0;
  reg b = 1;
  wire clk = 0;

  initial begin
    a = @(posedge clk) b;
//      ^^^^^^^^^^^^^^ meta.event-control.sv
  end
endmodule
