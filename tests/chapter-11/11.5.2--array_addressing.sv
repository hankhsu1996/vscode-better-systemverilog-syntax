// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array_addressing
:description: array addressing test
:tags: 11.5.2
*/
module top();
logic [7:0] mem [0:1023];
logic [7:0] a;

initial begin
  a = mem[123];
//       ^^^^^ meta.dimension.sv
//        ^^^ constant.numeric.integer.sv
end

endmodule
