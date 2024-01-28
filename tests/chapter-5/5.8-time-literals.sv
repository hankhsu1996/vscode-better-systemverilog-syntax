// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: time-literals
:description: Examples of time literals
:tags: 5.8
*/

`timescale 100ps/10ps

module top();
  time a;

  initial begin
    a = 1fs;
//      ^ constant.numeric.integer.sv
//       ^^ constant.numeric.time-unit.sv
    a = 1ps;
//      ^ constant.numeric.integer.sv
//       ^^ constant.numeric.time-unit.sv
    a = 1ns;
//      ^ constant.numeric.integer.sv
//       ^^ constant.numeric.time-unit.sv
    a = 1us;
//      ^ constant.numeric.integer.sv
//       ^^ constant.numeric.time-unit.sv
    a = 1ms;
//      ^ constant.numeric.integer.sv
//       ^^ constant.numeric.time-unit.sv
    a = 1s;
//      ^ constant.numeric.integer.sv
//       ^ constant.numeric.time-unit.sv

    /* real */
    a = 2.1ms;
//      ^^^ constant.numeric.real.sv
//         ^^ constant.numeric.time-unit.sv

  end;

endmodule
