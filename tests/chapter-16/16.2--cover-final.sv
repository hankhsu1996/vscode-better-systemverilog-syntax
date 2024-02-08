// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cover_final_test
:description: cover final test
:tags: 16.4
*/
module top();

logic a = 1;

  cover final (a != 0);
//^^^^^ keyword.control.cover.sv
//      ^^^^^ keyword.control.final.sv
//             ^ variable.other.sv
//               ^^ keyword.operator.binary.sv
//                  ^ constant.numeric.integer.sv

endmodule
