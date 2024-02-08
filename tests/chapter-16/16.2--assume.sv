// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assume_test
:description: assume test
:tags: 16.2
*/
module top(input logic a);

  initial assume (a != 0);
//^^^^^^^ keyword.control.initial.sv
//        ^^^^^^ keyword.control.assume.sv
//                ^ variable.other.sv
//                  ^^ keyword.operator.binary.sv
//                     ^ constant.numeric.integer.sv

endmodule
