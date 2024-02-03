// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assignment_sim
:description: assignment simulation test
:type: simulation elaboration parsing
:tags: 11.4.1
*/
module top();
reg [3:0] a;
reg [3:0] b;
initial begin
  a = 4'd12;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^^^^^ constant.numeric.decimal.sv
  b = 4'd5;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^^^^ constant.numeric.decimal.sv
  $display(":assert: (12 == %d)", a);
  a = b;
  $display(":assert: (5 == %d)", a);
end
endmodule
