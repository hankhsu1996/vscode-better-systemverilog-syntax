// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-unsized
:description: Integer literal constantsa
:tags: 5.7.1
*/
module top();
  logic [31:0] a;

  initial begin
    a = 659;      // is a decimal number
//      ^^^ constant.numeric.integer.sv
    a = 'h 837FF; // is a hexadecimal number
//      ^^^^^^^^ constant.numeric.hex.sv
    a = 'o7460;   // is an octal number
//      ^^^^^^ constant.numeric.octal.sv
  end

endmodule
