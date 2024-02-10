// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: info_task
:description: $info test
:tags: 20.10
:type: simulation elaboration parsing
*/

module top();

initial begin
  $info("info");
//^^^^^ entity.name.function.sv
//      ^^^^^^ string.quoted.double.sv
end

endmodule
