// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: localparam_uint
:description: localparam unsigned typed
:tags: 6.20.4
*/
module top();
  localparam int unsigned q = 123;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^^^ entity.name.type.sv
//               ^^^^^^^^ storage.modifier.unsigned.sv
//                        ^ variable.other.constant.sv
endmodule
