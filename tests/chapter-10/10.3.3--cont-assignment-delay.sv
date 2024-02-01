// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cont_assignment_delay
:description: continuous assignment with delay test
:tags: 10.3.3
*/
module top(input a, input b);

wire w;

assign #10 w = a & b;
//<------ keyword.control.assign.sv
//     ^ punctuation.definition.delay.sv
//      ^^ constant.numeric.integer.sv
//         ^ variable.other.sv
//           ^ keyword.operator.assignment.sv
//             ^ variable.other.sv
//               ^ keyword.operator.binary.sv
//                 ^ variable.other.sv

endmodule
