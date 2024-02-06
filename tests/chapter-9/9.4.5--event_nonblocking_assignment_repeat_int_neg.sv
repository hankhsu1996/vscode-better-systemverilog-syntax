// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_nonblocking_assignment_repeat_int_neg
:description: event non blk assignment repeat
:tags: 9.4.5
*/
module block_tb ();
  reg a = 0;
  reg b = 1;
  wire clk = 0;

  int i = -3;

  initial begin
    a = repeat(i) @(posedge clk) b;
//      ^^^^^^ keyword.control.repeat.sv
//                ^^^^^^^^^^^^^^ meta.event-control.sv
  end
endmodule
