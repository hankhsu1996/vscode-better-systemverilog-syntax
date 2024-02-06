// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: final
:description: final check
:tags: 9.2.3
*/
module initial_tb ();
  reg a = 0;
  final
//^^^^^ keyword.control.final.sv
    a = 1;
endmodule
