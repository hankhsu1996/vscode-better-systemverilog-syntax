// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: stop_task
:description: $stop test
:tags: 20.2
*/
module top();

initial
  $stop;
//^^^^^ entity.name.function.sv

endmodule
