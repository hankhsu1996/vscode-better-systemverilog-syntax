// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: idx_select_sim
:description: indexed select bit simulation test
:type: simulation elaboration parsing
:tags: 11.5.1
*/
module top();
logic [15:0] a = 16'h1000;
logic b;
logic c;

initial begin
  b = a[12];
//     ^^^^ meta.dimension.sv
//      ^^ constant.numeric.integer.sv
  c = a[5];
//     ^^^ meta.dimension.sv
//      ^ constant.numeric.integer.sv
  $display(":assert: (1 == %d)", b);
  $display(":assert: (0 == %d)", c);
end

endmodule
