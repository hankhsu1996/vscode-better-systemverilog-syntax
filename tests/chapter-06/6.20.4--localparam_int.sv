// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: localparam_int
:description: localparam integer type
:tags: 6.20.4
*/
module top();
  localparam int p = 123;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^^^ entity.name.type.sv
//               ^ variable.other.constant.sv
//                 ^ keyword.operator.assignment.sv
//                   ^^^ constant.numeric.integer.sv
endmodule
