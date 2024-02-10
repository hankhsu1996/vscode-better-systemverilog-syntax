// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.11--pragma-number
:description: Test
:tags: 22.11
:type: preprocessing
*/
`pragma pragma_number 123
//<------- keyword.control.pragma.sv
//      ^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                    ^^^ constant.numeric.integer.sv
