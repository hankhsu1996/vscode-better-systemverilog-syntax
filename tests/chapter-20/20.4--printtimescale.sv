// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: printtimescale_task
:description: $printtimescale test
:tags: 20.4
:type: simulation elaboration parsing
*/

`timescale 1 ms / 1 us

module top();

initial
  $printtimescale;
//^^^^^^^^^^^^^^^ entity.name.function.sv

endmodule
