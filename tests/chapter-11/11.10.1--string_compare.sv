// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_compare
:description: string comparison test
:type: simulation elaboration parsing
:tags: 11.10.1
*/
module top();

bit [8*14:1] a;
bit [8*14:1] b;

initial begin
  a = "Test";
//    ^^^^^^ string.quoted.double.sv
  b = "Test";
//    ^^^^^^ string.quoted.double.sv
  $display(":assert:('%s' == '%s')", a, b);
end

endmodule
