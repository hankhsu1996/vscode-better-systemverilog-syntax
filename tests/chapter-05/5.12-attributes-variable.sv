// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: attributes-variable
:description: Assing attributes to a variable
:tags: 5.12
*/

module top();
  (* fsm_state *)   logic [7:0] a;
//^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//^^ punctuation.definition.attribute.begin.sv
//   ^^^^^^^^^ entity.other.attribute-name.sv
//             ^^ punctuation.definition.attribute.end.sv
  (* fsm_state=1 *) logic [7:0] b;
//^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//^^ punctuation.definition.attribute.begin.sv
//   ^^^^^^^^^ entity.other.attribute-name.sv
//            ^ keyword.operator.assignment.sv
//             ^ constant.numeric.integer.sv
//               ^^ punctuation.definition.attribute.end.sv
  (* fsm_state=0 *) logic [7:0] c;
//^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//^^ punctuation.definition.attribute.begin.sv
//   ^^^^^^^^^ entity.other.attribute-name.sv
//            ^ keyword.operator.assignment.sv
//             ^ constant.numeric.integer.sv
//               ^^ punctuation.definition.attribute.end.sv
endmodule
