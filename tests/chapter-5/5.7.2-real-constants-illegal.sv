// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: real-constants-illegal
:description: Examples of real literal constants
:should_fail_because: Real literal constants must have at least one digit on each side of the decimal point
:tags: 5.7.2
*/
module top();
  logic [31:0] a;

  initial begin
    a = .12;
//      ^^^ - constant.numeric.real.sv
    a = 9.;
//      ^^ - constant.numeric.real.sv
    a = 4.E3;
//      ^^^^ - constant.numeric.real.sv
    a = .2e-7;
//      ^^^^^ - constant.numeric.real.sv
  end

endmodule
