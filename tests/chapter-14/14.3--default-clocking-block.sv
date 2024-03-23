// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: default_clocking_block
:description: default clocking block test
:tags: 14.3
*/
module top(input clk);

  default clocking @(posedge clk);
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^^ storage.type.clocking.sv
    default input #10ns output #5ns;
  endclocking
//^^^^^^^^^^^ storage.type.clocking.sv

endmodule
