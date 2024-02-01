// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: logic_vector
:description: logic vector tests
:tags: 6.9.1
*/
module top();
  logic [15:0] a;
//^^^^^ entity.name.type.logic.sv
//      ^^^^^^ meta.dimension.sv
//      ^ punctuation.section.brackets.begin.sv
//       ^^ constant.numeric.integer.sv
//         ^ punctuation.separator.colon.sv
//          ^ constant.numeric.integer.sv
//           ^ punctuation.section.brackets.end.sv
endmodule
