// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-left-padding
:description: Automatic left padding of literal constant numbers
:tags: 5.7.1
*/
module top();
  logic [11:0] a, b, c, d;
  logic [84:0] e, f, g;

  initial begin
    a = 'h x;   // yields xxx
//      ^^^^ constant.numeric.hex.sv
    b = 'h 3x;  // yields 03x
//      ^^^^^ constant.numeric.hex.sv
    c = 'h z3;  // yields zz3
//      ^^^^^ constant.numeric.hex.sv
    d = 'h 0z3; // yields 0z3
//      ^^^^^^ constant.numeric.hex.sv
    e = 'h5;    // yields {82{1'b0},3'b101}
//      ^^^ constant.numeric.hex.sv
    f = 'hx;    // yields {85{1'hx}}
//      ^^^ constant.numeric.hex.sv
    g = 'hz;    // yields {85{1'hz}}
//      ^^^ constant.numeric.hex.sv
  end

endmodule
