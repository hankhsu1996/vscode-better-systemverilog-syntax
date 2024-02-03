// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unary_op_inc_sim
:description: ++ operator simulation test
type: simulation elaboration parsing
:tags: 11.4.2
*/
module top();

int a = 12;

initial begin
  a++;
//^ variable.other.sv
// ^^ keyword.operator.incdec.sv
  $display(":assert: (13 == %d)", a);
end

endmodule
