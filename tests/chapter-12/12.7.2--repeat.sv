// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: repeat_loop
:description: A module testing repeat loop
:tags: 12.7.2
*/
module repeat_tb ();
  int a = 128;
  initial begin
    repeat(a)
//  ^^^^^^^^^ meta.loop-statement.sv
//  ^^^^^^ keyword.control.repeat.sv
    $display("repeat");
  end
endmodule
