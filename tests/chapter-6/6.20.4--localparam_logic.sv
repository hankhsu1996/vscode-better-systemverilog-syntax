// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: localparam_logic
:description: localparam with logic type
:tags: 6.20.4
*/
module top();
  localparam [10:0] p = 1 << 5;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^^^^^^ meta.dimension.sv
//                  ^ variable.other.constant.sv
  localparam logic [10:0] q = 1 << 5;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^^^^^ entity.name.type.logic.sv
//                 ^^^^^^ meta.dimension.sv
//                        ^ variable.other.constant.sv
endmodule
