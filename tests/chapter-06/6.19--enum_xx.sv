// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_xx
:description: enum with x tests
:tags: 6.19
*/
module top();
  enum integer {a=0, b={32{1'bx}}, c=1} val;
//              ^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.sv
//              ^ variable.other.enummember.sv
//                ^ constant.numeric.integer.sv
//                   ^ variable.other.enummember.sv
//                     ^^^^^^^^^^ meta.concatenation.sv
//                                 ^ variable.other.enummember.sv
//                                   ^ constant.numeric.integer.sv
endmodule
