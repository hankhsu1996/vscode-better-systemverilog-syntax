// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.7--timescale-reset
:description: Test
:tags: 22.7
:type: preprocessing
*/
`timescale 1 ns / 1 ps
`resetall
//<--------- keyword.control.resetall.sv
`timescale 10 us / 100 ns
