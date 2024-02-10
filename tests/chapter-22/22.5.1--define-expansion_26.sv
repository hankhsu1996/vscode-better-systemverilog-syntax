// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_26
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define append(f) f``_master
//                 ^^ constant.character.escape.sv
module top ();
initial $display(`append(clock));
endmodule
