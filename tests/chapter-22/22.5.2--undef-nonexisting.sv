// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.2--undef-nonexisting
:description: Test
:tags: 22.5.2
:type: preprocessing
*/
`undef FOO
//<------ keyword.control.undef.sv
`undef BAR
//<------ keyword.control.undef.sv
