// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: default-nettype
:description: Default nettype check
:tags: 5.6.4
*/

`default_nettype wire
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
`default_nettype none
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
module dn();
endmodule
