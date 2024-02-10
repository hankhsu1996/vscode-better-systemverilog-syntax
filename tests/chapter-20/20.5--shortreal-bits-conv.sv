// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: shortrealtobits_bitstoshortreal_functions
:description: $shortrealtobits and $bitstoshortreal test
:tags: 20.5
:type: simulation elaboration parsing
*/

module top();

  shortreal s;

initial begin
  s = $bitstoshortreal($shortrealtobits(12.45));
//    ^^^^^^^^^^^^^^^^ entity.name.function.sv
//                     ^^^^^^^^^^^^^^^^ entity.name.function.sv
//                                      ^^^^^ constant.numeric.real.sv
  $display(":assert: (%0d == 1)", (s > 12.449 && s < 12.451));
end

endmodule
