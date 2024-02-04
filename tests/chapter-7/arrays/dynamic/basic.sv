// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dyn-arr-basic
:description: Test dynamic arrays support
:tags: 7.5
*/
module top ();

bit [7:0] arr[];
//           ^ punctuation.section.brackets.begin.sv
//            ^ punctuation.section.brackets.end.sv

endmodule
