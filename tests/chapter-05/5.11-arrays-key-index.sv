// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: arrays-key-index
:description: Basic arrays test
:tags: 5.11
*/
module top();
  typedef int triple [1:3];
  triple b = '{1:1, default:0};
//           ^^ punctuation.section.braces.begin.sv
//             ^ constant.numeric.integer.sv
//              ^ punctuation.separator.colon.sv
//               ^ constant.numeric.integer.sv
//                ^ punctuation.separator.comma.sv
//                  ^^^^^^^ keyword.other.default.sv
//                         ^ punctuation.separator.colon.sv
//                          ^ constant.numeric.integer.sv
endmodule
