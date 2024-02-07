// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: clocking_block
:description: clocking block test
:tags: 14.3
*/
module top(input clk);

  clocking ck1 @(posedge clk);
//^^^^^^^^ storage.type.clocking.sv
    default input #10ns output #5ns;
  endclocking
//^^^^^^^^^^^ storage.type.clocking.sv

endmodule
