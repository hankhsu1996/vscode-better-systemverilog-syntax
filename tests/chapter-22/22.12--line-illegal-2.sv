// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.12--line-illegal-2
:description: The filename parameter shall be a string literal
:should_fail_because: The filename parameter shall be a string literal
:tags: 22.12
:type: preprocessing
*/
`line 1 somefile 2
//<----- keyword.control.line.sv
//    ^ constant.numeric.integer.sv
//      ^^^^^^^^ invalid.illegal.sv
//               ^ constant.numeric.integer.sv
