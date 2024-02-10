// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_19
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define wordsize 8
module top ();
logic [1:`wordsize] data;
//     ^ constant.numeric.integer.sv
//      ^ punctuation.separator.colon.sv
//       ^^^^^^^^^ meta.preprocessor.macro-name.sv
endmodule
