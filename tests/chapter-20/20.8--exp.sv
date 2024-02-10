// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: exp_function
:description: $exp test
:tags: 20.8
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: (%f > 2.718) and (%f < 2.719)", $exp(1), $exp(1));
//                                                   ^^^^ entity.name.function.sv
//                                                        ^ constant.numeric.integer.sv
//                                                            ^^^^ entity.name.function.sv
//                                                                 ^ constant.numeric.integer.sv
end

endmodule
