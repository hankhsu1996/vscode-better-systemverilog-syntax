// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: empty_string_sim
:description: empty string simulation test
:type: simulation elaboration parsing
:tags: 11.10.3
*/
module top();

bit [8*14:1] a;

initial begin
  a = "";
//    ^^ string.quoted.double.sv
  $display(":assert: (1 == %d)", a == 0);
end

endmodule
