// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: attributes-module
:description: Assing attributes to a module
:tags: 5.12
*/

(* optimize_power *)
//<-------------------- meta.attribute-instance.sv
//<-- punctuation.definition.attribute.begin.sv
// ^^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                ^^ punctuation.definition.attribute.end.sv
module topa();
endmodule

(* optimize_power=0 *)
//<-------------------- meta.attribute-instance.sv
//<-- punctuation.definition.attribute.begin.sv
// ^^^^^^^^^^^^^^ entity.other.attribute-name.sv
//               ^ keyword.operator.assignment.sv
//                ^ constant.numeric.integer.sv
//                  ^^ punctuation.definition.attribute.end.sv
module topb();
endmodule

(* optimize_power=1 *)
//<-------------------- meta.attribute-instance.sv
//<-- punctuation.definition.attribute.begin.sv
// ^^^^^^^^^^^^^^ entity.other.attribute-name.sv
//               ^ keyword.operator.assignment.sv
//                ^ constant.numeric.integer.sv
//                  ^^ punctuation.definition.attribute.end.sv
module topc();
endmodule
