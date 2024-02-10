// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_23
:description: Test
:should_fail_because:  All compiler directives shall be considered predefined macro names; it shall be illegal to redefine a compiler directive as a macro name.
:tags: 22.5.1
:type: preprocessing
*/
`define define "illegal"
