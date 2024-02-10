// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.4--include_with_comment
:description: Test
:tags: 22.4
:type: preprocessing parsing
*/
`include "dummy_include.sv" // comments after `include are perfectly legal
//<------- keyword.control.include.sv
//       ^^^^^^^^^^^^^^^^^^ string.quoted.double.sv
//                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.sv
module top ();
endmodule
