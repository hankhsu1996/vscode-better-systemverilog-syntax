// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cond_op_sim
:description: ?: operator simulation test
:type: simulation elaboration parsing
:tags: 11.4.11
*/
module top();

int a = 12;
int b = 5;
int c;

initial begin
  c = (a > b) ? 11 : 13;
//    ^^^^^^^ meta.parenthesis.sv
//       ^ keyword.operator.binary.sv
//            ^ keyword.operator.ternary.sv
//                 ^ punctuation.separator.colon.sv
  $display(":assert: (11 == %d)", c);
end

endmodule
