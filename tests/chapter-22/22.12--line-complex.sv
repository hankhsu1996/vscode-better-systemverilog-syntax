// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.12--line-complex
:description: Test
:tags: 22.12
:type: preprocessing
*/
`line 1 "somefile" 2
//<----- keyword.control.line.sv
//    ^ constant.numeric.integer.sv
//      ^^^^^^^^^^ string.quoted.double.sv
//                 ^ constant.numeric.integer.sv
`line 123 "someother" 1
`line 8273 "somefile" 0
`resetall
//<--------- keyword.control.resetall.sv
`line 5 "foo" 2
