// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: itor_function
:description: $itor test
:tags: 20.5
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: (%f == 20.0)", $itor(20));
//                                  ^^^^^ entity.name.function.sv
//                                        ^^ constant.numeric.integer.sv
end

endmodule
