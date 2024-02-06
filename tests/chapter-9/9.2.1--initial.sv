// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: initial
:description: initial check
:tags: 9.2.1
*/
module initial_tb ();
  reg a = 0;
  initial
//^^^^^^^ keyword.control.initial.sv
    a = 1;
endmodule
