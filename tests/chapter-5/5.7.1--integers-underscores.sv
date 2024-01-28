// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-underscores
:description: Automatic left padding of literal numbers using single-bit value
:tags: 5.7.1
*/
module top();
  logic [31:0] a;
  logic [15:0] b;
  logic [31:0] c;

  initial begin
    a = 27_195_000;              // unsized decimal 27195000
//      ^^^^^^^^^^ constant.numeric.integer.sv
    b = 16'b0011_0101_0001_1111; // 16-bit binary number
//      ^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.binary.sv
    c = 32 'h 12ab_f001;         // 32-bit hexadecimal number
//      ^^^^^^^^^^^^^^^ constant.numeric.hex.sv
  end

endmodule
