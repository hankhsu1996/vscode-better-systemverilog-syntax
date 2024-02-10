// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.3--resetall_illegal
:description: It shall be illegal for the `resetall directive to be specified within a design element.
:should_fail_because: It shall be illegal for the `resetall directive to be specified within a design element.
:tags: 22.3
:type: preprocessing parsing
*/
`resetall
//<--------- keyword.control.resetall.sv
module top ();
`resetall
//<--------- keyword.control.resetall.sv
endmodule
