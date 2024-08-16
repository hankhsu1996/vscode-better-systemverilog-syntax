// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: wait_fork
:description: wait fork test
:tags: 9.6.1
*/
module fork_tb ();
  reg a = 0;
  reg b = 0;
  initial begin
    fork
      begin
        #50 a = 1;
        #50 a = 0;
        #50 a = 1;
      end
      begin
        #50 b = 1;
        #50 b = 0;
        #50 b = 1;
      end
    join_none
    wait fork;
//  ^^^^ keyword.control.wait.sv
//       ^^^^ keyword.control.fork.sv
  end
endmodule
