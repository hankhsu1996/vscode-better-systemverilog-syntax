// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define FOUR 5
//<------- keyword.control.define.sv
//      ^^^^ meta.preprocessor.macro-name.sv
//           ^ constant.numeric.integer.sv
`define SOMESTRING "somestring"
//<------- keyword.control.define.sv
//      ^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                 ^^^^^^^^^^^^ string.quoted.double.sv
