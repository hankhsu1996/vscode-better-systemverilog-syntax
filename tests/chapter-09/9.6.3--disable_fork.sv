// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: disable_fork
:description: disable fork
:tags: 9.6.3
*/
module fork_tb ();
  reg a = 0;
  reg b = 0;
  reg c = 0;
  initial begin
    fork
      #50 a = 1;
      #100 b = 1;
      #150 c = 1;
    join_any
    disable fork;
//  ^^^^^^^ keyword.control.disable.sv
//          ^^^^ keyword.control.fork.sv
  end
endmodule
