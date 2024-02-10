// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.7--timescale-basic-4
:description: Test
:should_fail_because: The time_precision argument shall be at least as precise as the time_unit argument; it cannot specify a longerunit of time than time_unit.
:tags: 22.7
:type: simulation elaboration
*/
`timescale 1 ns / 10 ns
//         ^ constant.numeric.integer.sv
//           ^^ constant.numeric.time-unit.sv
//              ^ punctuation.separator.slash.sv
//                ^^ constant.numeric.integer.sv
//                   ^^ constant.numeric.time-unit.sv
