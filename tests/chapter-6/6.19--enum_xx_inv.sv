// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_xx_inv
:description: invalid enum with x tests
:should_fail_because: An enumerated name with x or z assignments assigned to an enum with no explicit data type or an explicit2-state declaration shall be a syntax error
:tags: 6.19
:type: simulation elaboration
*/
module top();
  enum bit [1:0] {a=0, b=2'bxx, c=1} val;
//               ^^^^^^^^^^^^^^^^^^^ meta.enum.sv
//                ^ variable.other.enummember.sv
//                  ^ constant.numeric.integer.sv
//                     ^ variable.other.enummember.sv
//                       ^^^^^ constant.numeric.binary.sv
//                              ^ variable.other.enummember.sv
//                                ^ constant.numeric.integer.sv
endmodule
