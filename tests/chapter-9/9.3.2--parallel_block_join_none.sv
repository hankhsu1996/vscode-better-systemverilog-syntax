// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parallel_block_join_none
:description: parallel block check
:tags: 9.3.2
*/
module parallel_tb ();
  reg a = 0;
  reg b = 0;
  reg c = 0;
  initial
    fork
//  ^^^^ keyword.control.fork.sv
      a = 1;
      b = 0;
      c = 1;
    join_none
//  ^^^^^^^^^ keyword.control.join_none.sv
endmodule
