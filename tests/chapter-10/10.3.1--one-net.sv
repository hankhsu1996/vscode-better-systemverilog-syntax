// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: one_net_assign
:description: simple net declaration assignment test
:tags: 10.3.1
:type: simulation elaboration parsing
*/
module top(input a, output b);

assign b = a;
//<------ keyword.control.assign.sv
//     ^ variable.other.sv
//       ^ keyword.operator.assignment.sv
//         ^ variable.other.sv

endmodule
