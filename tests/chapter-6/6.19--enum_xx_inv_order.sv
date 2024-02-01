// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_xx_inv_order
:description: unassigned name following enum with x tests
:should_fail_because: An unassigned enumerated name that follows an enum name with x or z assignments shall be a syntax error.
:tags: 6.19
:type: simulation elaboration
*/
module top();
  enum integer {a=0, b={32{1'bx}}, c} val;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.sv
//              ^ variable.other.enummember.sv
//               ^ keyword.operator.assignment.sv
//                ^ constant.numeric.integer.sv
//                 ^ punctuation.separator.comma.sv
//                   ^ variable.other.enummember.sv
//                    ^ keyword.operator.assignment.sv
//                     ^^^^^^^^^^ meta.concatenation.sv
//                               ^ punctuation.separator.comma.sv
//                                 ^ variable.other.enummember.sv
endmodule
