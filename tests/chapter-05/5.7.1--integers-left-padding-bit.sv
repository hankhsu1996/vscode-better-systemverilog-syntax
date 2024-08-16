// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-left-padding-bit
:description: Automatic left padding of literal numbers using single-bit value
:tags: 5.7.1
*/
module top();
  logic [15:0] a, b, c, d;

  initial begin
    a = '0; // sets all 16 bits to 0
//      ^^ constant.numeric.unbased-unsized.sv
    b = '1; // sets all 16 bits to 1
//      ^^ constant.numeric.unbased-unsized.sv
    c = 'x; // sets all 16 bits to x
//      ^^ constant.numeric.unbased-unsized.sv
    d = 'z; // sets all 16 bits to z
//      ^^ constant.numeric.unbased-unsized.sv
  end

endmodule
