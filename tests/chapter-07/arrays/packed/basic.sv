// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-packed
:description: Test packed arrays support
:tags: 7.4.1 7.4
*/
module top ();

bit [7:0] _bit;
//  ^^^^^ meta.dimension.sv
logic [7:0] _logic;
reg [7:0] _reg;

endmodule
