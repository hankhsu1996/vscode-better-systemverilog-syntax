// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_numerical_expr_cast
:description: enum numerical expression with casting
:tags: 6.19.4
*/
module top();
  typedef enum {a, b, c, d} e;

  initial begin
    e val;
//  ^ entity.name.type.sv
//    ^^^ variable.other.sv
    val = a;
//  ^^^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ variable.other.sv
    val = e'(val+1);
//  ^^^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ entity.name.type.sv
//         ^ punctuation.definition.casting.sv
//          ^ punctuation.section.group.begin.sv
//           ^^^ variable.other.sv
//              ^ keyword.operator.binary.sv
//               ^ constant.numeric.integer.sv
//                ^ punctuation.section.group.end.sv
  end
endmodule
