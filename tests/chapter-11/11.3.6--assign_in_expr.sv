// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assign_in_expr
:description: assignment in expression test
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
end

endmodule
