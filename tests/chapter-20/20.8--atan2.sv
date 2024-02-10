// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: atan2_function
:description: $atan2 test
:tags: 20.8
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display("%f", $atan2(2.1, 3.7));
//               ^^^^^^ entity.name.function.sv
//                      ^^^ constant.numeric.real.sv
//                           ^^^ constant.numeric.real.sv
end

endmodule
