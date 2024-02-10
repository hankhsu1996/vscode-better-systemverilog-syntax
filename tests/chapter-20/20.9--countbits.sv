// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: countbits_function
:description: $countbits test
:tags: 20.9
:type: simulation elaboration parsing
*/

module top();

initial begin
  logic [31:0] val = 32'h70008421;
  $display(":assert: (%d == 7)", $countbits(val, '1));
//                               ^^^^^^^^^^ entity.name.function.sv
//                                          ^^^ variable.other.sv
//                                               ^^ constant.numeric.unbased-unsized.sv
  $display(":assert: (%d == 7)", $countones(val));
//                               ^^^^^^^^^^ entity.name.function.sv
//                                          ^^^ variable.other.sv
  $display(":assert: (%d == 25)", $countbits(val, '0));
//                                ^^^^^^^^^^ entity.name.function.sv
//                                           ^^^ variable.other.sv
//                                                ^^ constant.numeric.unbased-unsized.sv
  $display(":assert: (%d == 32)", $countbits(val, '0, '1));
//                                ^^^^^^^^^^ entity.name.function.sv
//                                           ^^^ variable.other.sv
//                                                ^^ constant.numeric.unbased-unsized.sv
//                                                    ^^ constant.numeric.unbased-unsized.sv
  $display(":assert: (%d == 0)", $countbits(val, 'x, 'z));
//                               ^^^^^^^^^^ entity.name.function.sv
//                                          ^^^ variable.other.sv
//                                               ^^ constant.numeric.unbased-unsized.sv
//                                                   ^^ constant.numeric.unbased-unsized.sv
end

endmodule
