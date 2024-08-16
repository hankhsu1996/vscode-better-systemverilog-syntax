// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pragma-directive
:description: Try to set a pragma
:tags: 5.6.4
*/

module ts();
`pragma protect
//<------- keyword.control.pragma.sv
//      ^^^^^^^ entity.other.attribute-name.sv
  wire protected_wire;
`pragma protect end
//<------- keyword.control.pragma.sv
//      ^^^^^^^ entity.other.attribute-name.sv
//              ^^^ variable.other.sv
endmodule
