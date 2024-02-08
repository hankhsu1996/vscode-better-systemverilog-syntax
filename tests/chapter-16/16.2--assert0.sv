// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assert0_test
:description: assert #0 test
:tags: 16.4
*/
module top();

logic a = 1;

  assert #0 (a != 0);
//^^^^^^ keyword.control.assert.sv
//       ^ punctuation.definition.delay.sv
//        ^ constant.numeric.integer.sv

endmodule
