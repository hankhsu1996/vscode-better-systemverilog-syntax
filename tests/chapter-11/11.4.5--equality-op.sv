// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: equality_op
:description: equality operator test
:type: simulation elaboration parsing
:tags: 11.4.5
*/
module top();

reg [7:0] a, b, c, d, e, f;

initial begin
  a = 8'b1101x001;
//  ^ keyword.operator.assignment.sv
  b = 8'b1101x000;
//  ^ keyword.operator.assignment.sv
  c = 8'b1101z001;
//  ^ keyword.operator.assignment.sv
  d = 8'b1101z000;
//  ^ keyword.operator.assignment.sv
  e = 8'b11011001;
//  ^ keyword.operator.assignment.sv
  f = 8'b11011000;
//  ^ keyword.operator.assignment.sv

  $display(":assert: (0 == %d)", a == b);
//                                 ^^ keyword.operator.binary.sv
  $display(":assert: (0 == %d)", c == d);
//                                 ^^ keyword.operator.binary.sv
  $display(":assert: (0 == %d)", e == f);
//                                 ^^ keyword.operator.binary.sv

  $display(":assert: (0 == %d)", a === b);
//                                 ^^^ keyword.operator.binary.sv
  $display(":assert: (0 == %d)", c === d);
//                                 ^^^ keyword.operator.binary.sv
  $display(":assert: (0 == %d)", e === f);
//                                 ^^^ keyword.operator.binary.sv
end

endmodule
