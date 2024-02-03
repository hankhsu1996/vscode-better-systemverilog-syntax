// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assign_in_expr_sim
:description: assignment in expression simulation test
:type: simulation elaboration parsing
:tags: 11.3.6
*/
module top();

int a;
int b;
int c;

initial begin
  a = (b = (c = 5));
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^^^^^^^^^^^^^ meta.parenthesis.sv
//     ^ variable.other.sv
//       ^ keyword.operator.assignment.sv
//         ^^^^^^^ meta.parenthesis.sv meta.parenthesis.sv
//          ^ variable.other.sv
//            ^ keyword.operator.assignment.sv
//              ^ constant.numeric.integer.sv
    $display(":assert: (5 == %d)", a);
    $display(":assert: (5 == %d)", b);
    $display(":assert: (5 == %d)", c);
end

endmodule
