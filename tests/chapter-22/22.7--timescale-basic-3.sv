// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.7--timescale-basic-3
:description: Test
:should_fail_because: The integers in `timescale arguments specify an order of magnitude for the size of the value; the valid integers are 1, 10, and 100
:tags: 22.7
:type: simulation elaboration
*/
`timescale 9 ns / 1 ps
//         ^ constant.numeric.integer.sv
//           ^^ constant.numeric.time-unit.sv
//              ^ punctuation.separator.slash.sv
//                ^ constant.numeric.integer.sv
//                  ^^ constant.numeric.time-unit.sv
