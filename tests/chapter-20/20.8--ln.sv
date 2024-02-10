// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ln_function
:description: $ln test
:tags: 20.8
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: (%d == 0)", $ln(1));
//                               ^^^ entity.name.function.sv
//                                   ^ constant.numeric.integer.sv
end

endmodule
