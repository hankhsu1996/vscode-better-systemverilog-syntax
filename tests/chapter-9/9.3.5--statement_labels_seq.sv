// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: statement_labels_seq
:description: sequential block labels check
:tags: 9.3.5
*/
module block_tb ();
  reg a = 0;
  reg b = 0;
  reg c = 0;
  initial
    name: begin
//  ^^^^ variable.other.sv
//      ^ punctuation.separator.colon.sv
      a = 1;
      b = a;
      c = b;
    end: name
//     ^ punctuation.separator.colon.sv
//       ^^^^ variable.other.block.sv
endmodule
