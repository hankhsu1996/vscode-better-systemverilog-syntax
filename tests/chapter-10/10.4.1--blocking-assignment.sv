// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: blocking_assignment
:description: blocking assignment test
:tags: 10.4.1
:type: simulation elaboration parsing
*/
module top();

logic a = 3;
//<----- entity.name.type.logic.sv
//    ^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ constant.numeric.integer.sv
logic b = 2;
//<----- entity.name.type.logic.sv
//    ^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ constant.numeric.integer.sv

initial begin
  a = 1;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^ constant.numeric.integer.sv
  b = a;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^ variable.other.sv
  $display(":assert: (%d == %d)", a, b);
end

endmodule
