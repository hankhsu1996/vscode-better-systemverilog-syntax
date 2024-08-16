// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_sequence
:description: enum sequence tests
:tags: 6.19.2
*/
module top();
  enum {start=10, step[10]} e;
//     ^^^^^^^^^^^^^^^^^^^^ meta.enum.sv
//      ^^^^^ variable.other.enummember.sv
//            ^^ constant.numeric.integer.sv
//                ^^^^ variable.other.enummember.sv
//                    ^^^^ meta.enum-range.sv
endmodule
