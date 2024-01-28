// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: celldefine
:description: Celldefine check
:tags: 5.6.4
*/

`celldefine
//<----------- keyword.control.celldefine.sv
module cd();
endmodule
`endcelldefine
//<-------------- keyword.control.endcelldefine.sv

module ncd();
endmodule
