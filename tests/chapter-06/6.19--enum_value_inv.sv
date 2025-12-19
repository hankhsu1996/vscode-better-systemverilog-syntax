// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_value_inv
:description: Tests that tools diagnose invalid enum value assignments
:should_fail_because: If the integer value expression is a sized literal constant, it shall be an error if the size is different from the enum base type, even if the value is within the representable range.
:tags: 6.19
:runner_verilator_flags: -Werror-WIDTH
:type: simulation elaboration
*/
module top();
  // 6.19 says:
  // If the integer value expression is a sized literal constant, it shall
  // be an error if the size is different from the enum base type, even if
  // the value is within the representable range.
  enum logic [2:0] {
//^^^^^^^^^^^^^^^^^^ meta.enum.sv
//^^^^ storage.type.enum.sv
//     ^^^^^ entity.name.type.sv
//           ^^^^^ meta.dimension.sv
//                 ^ punctuation.section.braces.begin.sv
    Global = 4'h2,
//  ^^^^^^^^^^^^^^ meta.enum.sv
//  ^^^^^^ variable.other.enummember.sv
//         ^ keyword.operator.assignment.sv
//           ^^^^ constant.numeric.hex.sv
//               ^ punctuation.separator.comma.sv
    Local = 4'h3
//  ^^^^^^^^^^^^ meta.enum.sv
//  ^^^^^ variable.other.enummember.sv
//        ^ keyword.operator.assignment.sv
//          ^^^^ constant.numeric.hex.sv
  } myenum;
//^ meta.enum.sv punctuation.section.braces.end.sv
//  ^^^^^^ variable.other.sv
endmodule
