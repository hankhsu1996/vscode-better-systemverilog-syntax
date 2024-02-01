// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: net_decl_assignment
:description: net declaration assignment test
:tags: 10.3.1
*/
module top(input a, input b);

wire w = a & b;
//<---- entity.name.type.wire.sv
//   ^ variable.other.sv
//     ^ keyword.operator.assignment.sv
//       ^ variable.other.sv
//         ^ keyword.operator.binary.sv
//           ^ variable.other.sv

endmodule
