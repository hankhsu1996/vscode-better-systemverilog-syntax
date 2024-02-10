// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: bits_function
:description: $bits test
:tags: 20.6
:type: simulation elaboration parsing
*/

module top();

initial begin
  logic [31:0] val;
  $display(":assert: (%d == 32)", $bits(val));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
end

endmodule
