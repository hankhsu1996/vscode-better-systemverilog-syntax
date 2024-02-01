// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cont_assignment
:description: continuous assignment test
:tags: 10.3.2
*/
module top(input a, input b);

wire w;
//<---- entity.name.type.wire.sv
//   ^ variable.other.sv
assign w = a & b;
//<------ keyword.control.assign.sv
//     ^ variable.other.sv
//       ^ keyword.operator.assignment.sv
//         ^ variable.other.sv
//           ^ keyword.operator.binary.sv
//             ^ variable.other.sv

endmodule
