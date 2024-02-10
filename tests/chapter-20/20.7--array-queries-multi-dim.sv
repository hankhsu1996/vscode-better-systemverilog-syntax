// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array_queries_multi_dim
:description: multi-dimensional array query function tests
:tags: 20.7
:type: simulation elaboration parsing
*/

module top();

logic [31:0] arr [15:0];

initial begin
  $display(":assert: (%d == 2)", $dimensions(arr));
//                               ^^^^^^^^^^^ entity.name.function.sv
//                                           ^^^ variable.other.sv
  $display(":assert: (%d == 1)", $increment(arr, 2));
//                               ^^^^^^^^^^ entity.name.function.sv
//                                          ^^^ variable.other.sv
//                                               ^ constant.numeric.integer.sv
  $display(":assert: (%d == 0)", $right(arr, 2));
//                               ^^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
  $display(":assert: (%d == 31)", $left(arr, 2));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
  $display(":assert: (%d == 0)", $right(arr, 1));
//                               ^^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
  $display(":assert: (%d == 15)", $left(arr, 1));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
  $display(":assert: (%d == 0)", $low(arr, 2));
//                               ^^^^ entity.name.function.sv
//                                    ^^^ variable.other.sv
//                                         ^ constant.numeric.integer.sv
  $display(":assert: (%d == 31)", $high(arr, 2));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
  $display(":assert: (%d == 32)", $size(arr, 2));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
//                                           ^ constant.numeric.integer.sv
end

endmodule
