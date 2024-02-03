// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_bit_array
:description: string stored in bit array test
:tags: 11.10
*/
module top();

bit [8*14:1] a;

initial begin
  a = "Test";
//    ^^^^^^ string.quoted.double.sv
end

endmodule
