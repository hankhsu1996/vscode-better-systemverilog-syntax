// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_anon
:description: anonymous enum tests
:tags: 6.19
*/
module top();
  enum {a, b, c} val;
//^^^^^^^^^^^^^^ meta.enum.sv
//     ^ punctuation.section.braces.begin.sv
//      ^ 	variable.other.enummember.sv
//       ^ punctuation.separator.comma.sv
//         ^ 	variable.other.enummember.sv
//          ^ punctuation.separator.comma.sv
//            ^ 	variable.other.enummember.sv
//             ^ punctuation.section.braces.end.sv
//               ^^^ variable.other.sv
endmodule
