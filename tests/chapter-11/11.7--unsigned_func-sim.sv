// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unsigned_func_sim
:description: $unsigned() simulation test
:type: simulation elaboration parsing
:tags: 11.7
*/
module top();

logic [7:0] a;

initial begin
  a = $unsigned(-4);
//    ^^^^^^^^^^^^^ meta.system-tf-call.sv
//    ^^^^^^^^^ entity.name.function.sv
//              ^ keyword.operator.unary.sv
//               ^ constant.numeric.integer.sv
  $display(":assert: (0b11111100 == %d)", a);
end

endmodule
