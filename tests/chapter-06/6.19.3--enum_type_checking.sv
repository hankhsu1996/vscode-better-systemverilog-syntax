// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_type_checking
:description: enum type checking tests
:tags: 6.19.3
*/
module top();
  typedef enum {a, b, c, d} e;

  initial begin
    e val;
//  ^ entity.name.type.sv
//    ^^^ variable.other.sv

// For tmLanguage, there is no way to distinguish between a normal variable and an enum member.

    val = a;
//  ^^^ variable.other.sv
//      ^ keyword.operator.assignment.sv
//        ^ variable.other.sv
  end
endmodule
