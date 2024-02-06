// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: always_comb
:description: always_comb check
:tags: 9.2.2.2
*/
module always_tb ();
  wire a = 0;
  reg b = 0;
  always_comb
//^^^^^^^^^^^ keyword.control.always_comb.sv
    b = ~a;
endmodule
