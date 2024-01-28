// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: include-directive
:description: Include empty file
:tags: 5.6.4
*/

`include "/dev/null"
//<-------- keyword.control.include.sv
//       ^^^^^^^^^^^ string.quoted.double.include.sv

module empty();
endmodule
