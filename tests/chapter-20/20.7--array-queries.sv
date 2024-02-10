// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array_queries
:description: array query function tests
:tags: 20.7
:type: simulation elaboration parsing
*/

module top();

logic [31:0] arr;

initial begin
  $display(":assert: (%d == 0)", $unpacked_dimensions(arr));
//                               ^^^^^^^^^^^^^^^^^^^^ entity.name.function.sv
//                                                    ^^^ variable.other.sv
  $display(":assert: (%d == 1)", $dimensions(arr));
//                               ^^^^^^^^^^^ entity.name.function.sv
//                                           ^^^ variable.other.sv
  $display(":assert: (%d == 1)", $increment(arr));
//                               ^^^^^^^^^^ entity.name.function.sv
//                                          ^^^ variable.other.sv
  $display(":assert: (%d == 0)", $right(arr));
//                               ^^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
  $display(":assert: (%d == 31)", $left(arr));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
  $display(":assert: (%d == 0)", $low(arr));
//                               ^^^^ entity.name.function.sv
//                                    ^^^ variable.other.sv
  $display(":assert: (%d == 31)", $high(arr));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
  $display(":assert: (%d == 32)", $size(arr));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^ variable.other.sv
end

endmodule
