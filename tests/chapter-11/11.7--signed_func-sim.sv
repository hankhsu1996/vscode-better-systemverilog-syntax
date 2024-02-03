// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: signed_func_sim
:description: $signed() simulation test
:type: simulation elaboration parsing
:tags: 11.7
*/
module top();

logic signed [7:0] a;

initial begin
  a = $signed(4'b1000);
//    ^^^^^^^^^^^^^^^^ meta.system-tf-call.sv
//    ^^^^^^^ entity.name.function.sv
  $display(":assert: (-8 == %d)", a);
end

endmodule
