// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: localparam
:description: localparam without type specifier
:tags: 6.20.4
*/
module top();
  localparam p = 123;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^ variable.other.constant.sv
//             ^ keyword.operator.assignment.sv
//               ^^^ constant.numeric.integer.sv
endmodule
