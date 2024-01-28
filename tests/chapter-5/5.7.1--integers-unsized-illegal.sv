// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-unsized-illegal
:description: Integer literal constants
:should_fail_because: hexadecimal format requires 'h
:tags: 5.7.1
*/
module top();
  logic [31:0] a;

  initial begin
    a = 4af; // is illegal (hexadecimal format requires 'h)
//      ^^^ - constant.numeric.hex.sv
  end

endmodule
