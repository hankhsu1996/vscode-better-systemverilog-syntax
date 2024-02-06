// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: delay_control
:description: delay control
:tags: 9.4.1
*/
module block_tb ();
  reg [3:0] a = 0;
  initial begin
    #10 a = 'h1;
//  ^ punctuation.definition.delay.sv
//   ^^ constant.numeric.integer.sv
//      ^ variable.other.sv
//        ^ keyword.operator.assignment.sv
//          ^^^ constant.numeric.hex.sv
    #10 a = 'h2;
//  ^ punctuation.definition.delay.sv
//   ^^ constant.numeric.integer.sv
//      ^ variable.other.sv
//        ^ keyword.operator.assignment.sv
//          ^^^ constant.numeric.hex.sv
    #10 a = 'h3;
    #10 a = 'h4;
  end
endmodule
