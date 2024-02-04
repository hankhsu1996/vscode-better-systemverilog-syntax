// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: queues-basic
:description: Test queues support
:tags: 7.10
*/
module top ();

int q[$];
//  ^ variable.other.sv
//   ^ punctuation.section.brackets.begin.sv
//    ^ constant.numeric.dollar.sv
//     ^ punctuation.section.brackets.end.sv

endmodule
