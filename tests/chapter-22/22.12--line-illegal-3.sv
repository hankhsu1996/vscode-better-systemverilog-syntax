// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.12--line-illegal-3
:description: The number parameter shall be a positive integer that specifies the new line number
:should_fail_because: The number parameter shall be a positive integer that specifies the new line number
:tags: 22.12
:type: preprocessing
*/
`line -12 "somefile" 3
//<----- keyword.control.line.sv
//    ^^^ invalid.illegal.sv
//        ^^^^^^^^^^ string.quoted.double.sv
//                   ^ constant.numeric.integer.sv