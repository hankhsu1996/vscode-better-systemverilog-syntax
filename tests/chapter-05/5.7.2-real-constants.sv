// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: real-constants
:description: Examples of real literal constants
:tags: 5.7.2
*/
module top();
  logic [31:0] a;

  initial begin
    a = 1.2;
//      ^^^ constant.numeric.real.sv
    a = 0.1;
//      ^^^ constant.numeric.real.sv
    a = 2394.26331;
//      ^^^^^^^^^^ constant.numeric.real.sv
    a = 1.2E12;           // the exponent symbol can be e or E
//      ^^^^^^ constant.numeric.real.sv
    a = 1.30e-2;
//      ^^^^^^^ constant.numeric.real.sv
    a = 0.1e-0;
//      ^^^^^^ constant.numeric.real.sv
    a = 23E10;
//      ^^^^^ constant.numeric.real.sv
    a = 29E-2;
//      ^^^^^ constant.numeric.real.sv
    a = 236.123_763_e-12; // underscores are ignored
//      ^^^^^^^^^^^^^^^^ constant.numeric.real.sv
  end

endmodule
