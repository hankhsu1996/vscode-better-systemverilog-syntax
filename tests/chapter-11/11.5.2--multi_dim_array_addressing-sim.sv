// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: multi_dim_array_addressing_sim
:description: multi-dimensional array addressing simulation test
:type: simulation elaboration parsing
:tags: 11.5.2
*/
module top();
logic [7:0] mem [0:1023][0:3];
logic [7:0] a;

initial begin
  mem[123][2] = 125;
//   ^^^^^ meta.dimension.sv
//        ^^^ meta.dimension.sv
  a = mem[123][2];
//       ^^^^^ meta.dimension.sv
//            ^^^ meta.dimension.sv
  $display(":assert: (125 == %d)", a);
end

endmodule
