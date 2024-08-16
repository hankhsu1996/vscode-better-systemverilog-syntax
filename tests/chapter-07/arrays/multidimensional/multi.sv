// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: multi-declaration
:description: Test multidimensional arrays
:tags: 7.4.5
*/

module top ();

// Same packed dimensions
bit [7:0] [31:0] arr_a [1:5] [1:10], arr_b [0:255];
//  ^^^^^ meta.dimension.sv
//        ^^^^^^ meta.dimension.sv
//               ^^^^^ variable.other.sv
//                     ^^^^^ meta.dimension.sv
//                           ^^^^^^ meta.dimension.sv
//                                 ^ punctuation.separator.comma.sv
//                                   ^^^^^ variable.other.sv
//                                         ^^^^^^^ meta.dimension.sv

endmodule
