// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_25
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define msg(x,y) `"x: `\`"y`\`"`"
//               ^^^^^^^^^^^^^^^^ string.quoted.macro.sv
//               ^^ constant.character.escape.sv
//                    ^^^^ constant.character.escape.sv
//                         ^^^^ constant.character.escape.sv
//                             ^^ constant.character.escape.sv
module top ();
initial $display(`msg(left side,right side));
endmodule
