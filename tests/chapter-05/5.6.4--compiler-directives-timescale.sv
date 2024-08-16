// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: timescale-directive
:description: Set timescale
:tags: 5.6.4
*/

`timescale 1 ns / 1 ps
//<---------- keyword.control.timescale.sv
//         ^ constant.numeric.integer.sv
//           ^^ constant.numeric.time-unit.sv
//              ^ punctuation.separator.slash.sv
//                ^ constant.numeric.integer.sv
//                  ^^ constant.numeric.time-unit.sv

module ts();
endmodule
