// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: display_task
:description: $display test
:tags: 21.2
:type: simulation elaboration parsing
*/
module top();

initial begin
  int val = 1234;
  $display(val);
//^^^^^^^^ entity.name.function.sv
//         ^^^ variable.other.sv
end

endmodule
