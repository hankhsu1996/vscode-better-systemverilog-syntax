// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-sized
:description: Integer literal constants
:tags: 5.7.1
*/
module top();
  logic  [3:0] a;
  logic  [4:0] b;
  logic [ 2:0] c;
  logic [11:0] d;
  logic [15:0] e;

  initial begin
    a = 4'b1001; // is a 4-bit binary number
//      ^^^^^^^ constant.numeric.binary.sv
    b = 5'D3;    // is a 5-bit decimal number
//      ^^^^ constant.numeric.decimal.sv
    c = 3'b01x;  // is a 3-bit number with the least
//      ^^^^^^ constant.numeric.binary.sv
                 // significant bit unknown
    d = 12'hx;   // is a 12-bit unknown number
//      ^^^^^ constant.numeric.hex.sv
    e = 16'hz;   // is a 16-bit high-impedance number
//      ^^^^^ constant.numeric.hex.sv
  end

endmodule
