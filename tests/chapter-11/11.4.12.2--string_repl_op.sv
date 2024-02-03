// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_repl_op
:description: string replication operator test
:tags: 11.4.12.2
:type: simulation elaboration parsing
*/
module top();

string str;

initial begin
  str = {4{"test"}};
//      ^^^^^^^^^^^ meta.concatenation.sv
//       ^ constant.numeric.integer.sv
//        ^^^^^^^^ meta.concatenation.sv meta.concatenation.sv
//         ^^^^^^ string.quoted.double.sv
  $display(":assert:('%s' == 'testtesttesttest')", str);
end

endmodule
