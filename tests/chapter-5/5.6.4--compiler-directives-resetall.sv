// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: resetall-directive
:description: Check for the resetall directive
:tags: 5.6.4
*/

`resetall
//<--------- keyword.control.resetall.sv

module ts();
endmodule
