// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: idx_pos_part_select_sim
:description: indexed positive part-select bit simulation test
:type: simulation elaboration parsing
:tags: 11.5.1
*/
module top();
logic [15:0] a = 16'h1234;
logic [7:0] b;

initial begin
  b = a[0+:8];
//     ^^^^^^ meta.dimension.sv
//      ^ constant.numeric.integer.sv
//       ^^ punctuation.separator.pluscolon.sv
//         ^ constant.numeric.integer.sv
  $display(":assert: (0x34 == 0x%x)", b);
end

endmodule
