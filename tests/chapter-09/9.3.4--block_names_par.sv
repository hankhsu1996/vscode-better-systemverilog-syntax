// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: block_names_par
:description: parallel block names check
:tags: 9.3.4
*/
module block_tb ();
  reg a = 0;
  initial
    fork: name
//  ^^^^ keyword.control.fork.sv
//      ^ punctuation.separator.colon.sv
//        ^^^^ variable.other.block.sv
      a = 1;
    join: name
//  ^^^^ keyword.control.join.sv
//      ^ punctuation.separator.colon.sv
//        ^^^^ variable.other.block.sv
endmodule
