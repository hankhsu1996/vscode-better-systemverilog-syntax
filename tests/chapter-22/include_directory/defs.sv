// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: defs
:description: Utility for testing `include directive
:type: preprocessing
:tags: 22.4
*/

`define define_var "define_var"
//<------- keyword.control.define.sv
//      ^^^^^^^^^^ 	meta.preprocessor.macro-name.sv
//                 ^^^^^^^^^^^^ string.quoted.double.sv
`define TWO_PLUS_TWO 5
//<------- keyword.control.define.sv
//      ^^^^^^^^^^^^ 	meta.preprocessor.macro-name.sv
//                   ^ constant.numeric.integer.sv
