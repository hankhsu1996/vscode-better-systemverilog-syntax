// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: let_construct
:description: let construct test
:tags: 11.12
*/
module top();

logic [3:0] a = 12;
logic [3:0] b = 15;
logic [3:0] c = 7;
logic d;

  let op(x, y, z) = |((x | y) & z);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.let-declaration.sv
//^^^ storage.type.let.sv
//    ^^ entity.name.function.sv
//      ^ punctuation.section.group.begin.sv
//       ^ variable.other.sv
//        ^ punctuation.separator.comma.sv
//          ^ variable.other.sv
//           ^ punctuation.separator.comma.sv
//             ^ variable.other.sv
//              ^ punctuation.section.group.end.sv
//                ^ keyword.operator.assignment.sv

initial begin
  d = op(.x(a), .y(b), .z(c));
//    ^^^^^^^^^^^^^^^^^^^^^^^ meta.tf-call.sv
//    ^^ entity.name.function.sv
//      ^ punctuation.section.group.begin.sv
//       ^ punctuation.definition.named-parameter-assignment.sv
//        ^ variable.parameter.sv
//         ^ punctuation.section.group.begin.sv
//          ^ variable.other.sv
//           ^ punctuation.section.group.end.sv
//            ^ punctuation.separator.comma.sv
end

endmodule
