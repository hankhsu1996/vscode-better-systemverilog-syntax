// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: non_idx_part_select
:description: non-indexed part-select bit test
:tags: 11.5.1
*/
module top();
logic [15:0] a;
logic [3:0] b;

initial begin
  b = a[11:8];
//     ^^^^^^ meta.dimension.sv
//      ^^ constant.numeric.integer.sv
//        ^ punctuation.separator.colon.sv
//         ^ constant.numeric.integer.sv
end

endmodule
