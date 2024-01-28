// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-sized-illegal
:description: Integer literal constants
:should_fail_because: illegal negative decimal syntax, proper one is -8'd6
:tags: 5.7.1
*/
module top();
  logic  [7:0] a;

  initial begin
    a = 8'd-6;
//      ^^^^^ - constant.numeric.decimal.sv
  end

endmodule
