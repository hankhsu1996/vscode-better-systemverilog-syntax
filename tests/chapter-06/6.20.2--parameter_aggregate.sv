// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parameter_aggregate
:description: parameter aggregate type tests
:tags: 6.20.2
*/
module top();
  parameter logic [31:0] p [3:0] = '{1, 2, 3, 4};
//^^^^^^^^^ storage.modifier.parameter.sv
//          ^^^^^ entity.name.type.sv
//                ^^^^^^ meta.dimension.sv
//                       ^ variable.other.constant.sv
//                         ^^^^^ meta.dimension.sv
//                               ^ keyword.operator.assignment.sv
//                                  ^^^^^^^^^^^^ meta.pattern.sv
endmodule
