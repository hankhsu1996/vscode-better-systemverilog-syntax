// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_sequence_controls
:description: event sequence
:tags: 9.4.3
*/
module block_tb ();
  reg a = 0;
  wire b = 1;
  reg enable = 0;

  initial begin
    #10 enable = 1;
  end

  initial begin
    wait (enable) #10 a = b;
//  ^^^^ keyword.control.wait.sv
  end
endmodule
