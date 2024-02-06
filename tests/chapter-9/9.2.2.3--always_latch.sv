// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: always_latch_expr
:description: always_latch check
:tags: 9.2.2.3
*/
module always_tb ();
  wire a = 0;
  wire b = 0;
  reg q = 0;
  always_latch
//^^^^^^^^^^^^ keyword.control.always_latch.sv
    if(a) q <= b;
endmodule
