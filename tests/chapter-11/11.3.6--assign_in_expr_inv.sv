// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assign_in_expr_inv
:description: invalid assignment in expression test
:should_fail_because: blocking assignments within expression must be enclosed in parentheses
:tags: 11.3.6
*/
module top();

int a;
int b;
int c;

initial begin
  a = b = c = 5;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ variable.other.sv
//          ^ keyword.operator.assignment.sv
//            ^ constant.numeric.integer.sv
end

endmodule
