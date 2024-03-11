// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: statement_labels_par
:description: parallel block labels check
:tags: 9.3.5
*/

// It would be better to highlight 'name:' as variable.other.block.sv, but it's not critical.

module block_tb ();
  reg a = 0;
  initial
    name: fork
//  ^^^^ variable.other.block.sv
//      ^ punctuation.separator.colon.sv
      a = 1;
    join: name
//  ^^^^ keyword.control.join.sv
//      ^ punctuation.separator.colon.sv
//        ^^^^ variable.other.block.sv
endmodule
