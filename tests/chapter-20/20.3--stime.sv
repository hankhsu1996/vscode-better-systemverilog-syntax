// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: stime_task
:description: $stime test
:tags: 20.3
*/
module top();

initial
  $display($stime);
//         ^^^^^^ entity.name.function.sv

endmodule
