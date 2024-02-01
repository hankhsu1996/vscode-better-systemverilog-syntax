// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_type_checking_inv
:description: invalid enum assignment tests
:should_fail_because: enum enforces strict type checking rules
:tags: 6.19.3
:type: simulation elaboration
*/
module top();
  typedef enum {a, b, c, d} e;

  initial begin
    e val;
//  ^ entity.name.type.sv
//    ^^^ variable.other.sv
    val = 1;
//  ^^^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ constant.numeric.integer.sv
  end
endmodule
