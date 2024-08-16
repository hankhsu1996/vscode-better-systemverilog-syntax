// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_numerical_expr
:description: enum numerical expression tests
:tags: 6.19.4
*/
module top();
  typedef enum {a, b, c, d} e;

  initial begin
    integer i;
//  ^^^^^^^ entity.name.type.integer.sv
//          ^ variable.other.sv
    e val;
//  ^ entity.name.type.sv
//    ^^^ variable.other.sv
    val = a;
//  ^^^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ variable.other.sv
    i = val * 4;
//  ^ variable.other.sv
//    ^ keyword.operator.assignment.sv
//      ^^^ variable.other.sv
//          ^ keyword.operator.binary.sv
//            ^ constant.numeric.integer.sv
  end
endmodule
