// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: memories-basic
:description: Test memories support
:tags: 7.4.4
*/
module top ();

// one-dimensinal array with elements of types
// reg, logic, bit
logic [7:0] mem [0:255];
//    ^^^^^ meta.dimension.sv
//              ^^^^^^^ meta.dimension.sv

endmodule
