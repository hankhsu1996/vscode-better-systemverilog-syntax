// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assume_final_test
:description: assume final test
:tags: 16.4
*/
module top(input logic a);

  assume final (a != 0);
//^^^^^^ keyword.control.assume.sv
//       ^^^^^ keyword.control.final.sv
//              ^ variable.other.sv
//                ^^ keyword.operator.binary.sv
//                   ^ constant.numeric.integer.sv

endmodule
