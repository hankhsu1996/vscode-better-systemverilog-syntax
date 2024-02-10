// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.2--undef-basic
:description: Test
:tags: 22.5.2
:type: preprocessing
*/
`define FOO "foo"
`undef FOO
//<------ keyword.control.undef.sv
//     ^^^ meta.preprocessor.macro-name.sv
