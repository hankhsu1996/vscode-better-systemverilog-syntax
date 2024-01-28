// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-signed
:description: Integer literal constants
:tags: 5.7.1
*/
module top();
  logic  [7:0] a;
  logic  [3:0] b;
  logic  [3:0] c;
  logic [15:0] d;

  initial begin
    a = -8'd 6;  // this defines the two's-complement of 6,
//      ^ keyword.operator.unary.sv
//       ^^^^^ constant.numeric.decimal.sv
                 // held in 8 bits—equivalent to -(8'd 6)
    b = 4'shf;   // this denotes the 4-bit number '1111', to
//      ^^^^^ constant.numeric.hex.sv
                 // be interpreted as a two's-complement number,
                 // or '-1'. This is equivalent to -4'h 1
    c = -4'sd15; // this is equivalent to -(-4'd 1), or '0001'
//      ^ keyword.operator.unary.sv
//       ^^^^^^ constant.numeric.decimal.sv
    d = 16'sd?;  // the same as 16'sbz
//      ^^^^^^ constant.numeric.decimal.sv
  end

endmodule
