// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: comments
:description: A module testing system verilog comments
:tags: 5.4
*/
module empty (
);
  /* multi
//^^ punctuation.definition.comment.sv
//   ^^^^^^ comment.block.sv
     line
//   ^^^^ comment.block.sv
     comment
//   ^^^^^^^ comment.block.sv
   */
// ^^ punctuation.definition.comment.sv

  // single line comment
//^^ punctuation.definition.comment.sv
//   ^^^^^^^^^^^^^^^^^^^ comment.line.sv
endmodule
