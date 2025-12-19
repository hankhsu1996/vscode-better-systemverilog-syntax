// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.8--default_nettype-redefinition
:description: Test
:tags: 22.8
:type: preprocessing
*/
`default_nettype wire
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
`default_nettype tri
//<---------------- keyword.control.default-nettype.sv
//               ^^^ entity.name.type.sv
`default_nettype tri0
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
`default_nettype tri1
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
`default_nettype wand
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
`default_nettype triand
//<---------------- keyword.control.default-nettype.sv
//               ^^^^^^ entity.name.type.sv
`default_nettype wor
//<---------------- keyword.control.default-nettype.sv
//               ^^^ entity.name.type.sv
`default_nettype trior
//<---------------- keyword.control.default-nettype.sv
//               ^^^^^ entity.name.type.sv
`default_nettype trireg
//<---------------- keyword.control.default-nettype.sv
//               ^^^^^^ entity.name.type.sv
`default_nettype uwire
//<---------------- keyword.control.default-nettype.sv
//               ^^^^^ entity.name.type.sv
`default_nettype none
//<---------------- keyword.control.default-nettype.sv
//               ^^^^ entity.name.type.sv
