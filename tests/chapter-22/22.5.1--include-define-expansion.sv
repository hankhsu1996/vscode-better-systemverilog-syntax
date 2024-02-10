// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--include-define-expansion
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define foo(the_file) `"the_file`"
//                    ^^^^^^^^^^^^ string.quoted.macro.sv
//                    ^^ constant.character.escape.sv
//                              ^^ constant.character.escape.sv
`include `foo(dummy_include.sv)
