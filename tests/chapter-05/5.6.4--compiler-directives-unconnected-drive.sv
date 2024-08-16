// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unconnected-drive
:description: Unconnected drive keywords
:tags: 5.6.4
:type: preprocessing
*/


`unconnected_drive pull1
//<------------------ keyword.control.unconnected-drive.sv
//                 ^^^^^ storage.modifier.pull1.sv

module ts();
endmodule

`nounconnected_drive
//<-------------------- keyword.control.nounconnected-drive.sv
