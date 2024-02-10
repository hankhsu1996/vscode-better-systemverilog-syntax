// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.3--undefineall-and-redefine
:description: Test
:tags: 22.5.3
:type: preprocessing
*/
`define FOO "foo"
`undefineall
//<------------ keyword.control.undefineall.sv
`define FOO 5
`undefineall
`define FOO(x,y) (x + y)
