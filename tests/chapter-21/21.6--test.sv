// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: test_plusargs
:description: $test$plusargs test
:tags: 21.6
:type: simulation elaboration parsing
*/
module top();

initial begin
  if ($test$plusargs("TEST")) $display("TEST argument found");
//    ^^^^^^^^^^^^^^ entity.name.function.sv
//                   ^^^^^^ string.quoted.double.sv
  else $display("TEST argument not found");
end

endmodule
