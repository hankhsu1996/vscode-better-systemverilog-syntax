// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_control_edge
:description: event control
:tags: 9.4.2
*/
module block_tb ();
  reg [3:0] a = 0;
  wire clk = 0;
  always @(edge clk) a = ~a;
//       ^^^^^^^^^^^ meta.event-control.sv
//         ^^^^ keyword.other.edge.sv
//              ^^^ variable.other.sv
endmodule
