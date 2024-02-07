// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: global_clocking_block
:description: global clocking block test
:tags: 14.3
*/
module top(input clk);

  global clocking ck1 @(posedge clk); endclocking
//^^^^^^ storage.modifier.global.sv
//       ^^^^^^^^ storage.type.clocking.sv
//                                    ^^^^^^^^^^^ storage.type.clocking.sv

endmodule
