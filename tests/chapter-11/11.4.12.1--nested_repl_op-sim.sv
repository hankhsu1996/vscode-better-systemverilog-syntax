// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: nested_repl_op_sim
:description: nested replication operator simulation test
:type: simulation elaboration parsing
:tags: 11.4.12.1
*/
module top();

bit [15:0] a;

bit [1:0] b = 2'b10;
bit [1:0] c = 2'b01;
bit [3:0] d = 4'b1111;

initial begin
  a = {{3{b, c}}, d};
//    ^^^^^^^^^^^^^^ meta.concatenation.sv
//     ^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv
//      ^ constant.numeric.integer.sv
//       ^^^^^^ meta.concatenation.sv meta.concatenation.sv meta.concatenation.sv
  $display(":assert: (0b1001100110011111 == %d)", a);
end

endmodule
