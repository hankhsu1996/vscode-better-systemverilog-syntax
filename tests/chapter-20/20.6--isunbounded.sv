// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: isunbounded_function
:description: $isunbounded test
:tags: 20.6
:type: simulation elaboration parsing
*/

module top();
parameter int i = $;

initial begin
  $display(":assert: (%d == 0)", $isunbounded(1));
//                               ^^^^^^^^^^^^ entity.name.function.sv
//                                            ^ constant.numeric.integer.sv
  $display(":assert: (%d == 1)", $isunbounded(i));
//                               ^^^^^^^^^^^^ entity.name.function.sv
//                                            ^ variable.other.sv
end

endmodule
