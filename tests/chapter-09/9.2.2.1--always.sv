// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: always
:description: always check
:tags: 9.2.2.1 9.4.1
*/
module always_tb ();
  logic a = 0;
  always #5 a = ~a;
//^^^^^^ keyword.control.always.sv
//       ^ punctuation.definition.delay.sv
//        ^ constant.numeric.integer.sv
endmodule
