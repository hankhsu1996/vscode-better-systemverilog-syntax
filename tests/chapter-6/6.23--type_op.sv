// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: type_op
:description: type operator tests
:tags: 6.23
*/
module top();
  real a = 4.76;
  real b = 0.74;
  var type(a+b) c;
//^^^ storage.modifier.var.sv
//    ^^^^^^^^^ meta.type-reference.sv
//    ^^^^ entity.name.function.sv
//        ^ punctuation.section.group.begin.sv
//         ^ variable.other.sv
//          ^ keyword.operator.binary.sv
//           ^ variable.other.sv
//            ^ punctuation.section.group.end.sv
//              ^ variable.other.sv
endmodule
