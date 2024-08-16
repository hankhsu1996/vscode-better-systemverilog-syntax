// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parameter_port_list
:description: parameter port list tests
:tags: 6.20.2
*/
module top #(p = 12);
//         ^^^^^^^^^ meta.parameter-port-list.sv
//         ^^ punctuation.section.group.begin.sv
//           ^ variable.other.constant.sv
//             ^ keyword.operator.assignment.sv
//               ^^ constant.numeric.integer.sv
//                 ^ punctuation.section.group.end.sv
endmodule
