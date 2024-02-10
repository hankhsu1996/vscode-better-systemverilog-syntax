// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: timeformat_task
:description: $timeformat test
:tags: 20.4
:type: simulation elaboration parsing
*/

`timescale 1 fs / 1 fs

module top();

initial begin
  $timeformat(-9, 5, "ns", 10);
//^^^^^^^^^^^ entity.name.function.sv
//             ^ constant.numeric.integer.sv
//                ^ constant.numeric.integer.sv
//                   ^^^^ string.quoted.double.sv
//                         ^^ constant.numeric.integer.sv
  $display("%t", $realtime);
end

endmodule
