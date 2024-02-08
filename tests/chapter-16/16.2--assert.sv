// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assert_test
:description: assert test
:tags: 16.2
*/
module top();

logic a = 1;

  initial assert (a != 0);
//^^^^^^^ keyword.control.initial.sv
//        ^^^^^^ keyword.control.assert.sv

endmodule
