// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assign_deassign
:description: assign-deassign statements test
:tags: 10.6.1
*/
module top(clk, q, d, clr, set);

input clk, d, clr, set;
output q;
logic q;

always @(clr or set)
  if (clr)
    assign q = 0;
//  ^^^^^^ keyword.control.assign.sv
//         ^ variable.other.sv
//           ^ keyword.operator.assignment.sv
//             ^ constant.numeric.integer.sv
  else if (set)
    assign q = 1;
//  ^^^^^^ keyword.control.assign.sv
//         ^ variable.other.sv
//           ^ keyword.operator.assignment.sv
//             ^ constant.numeric.integer.sv
  else
    deassign q;
//  ^^^^^^^^ keyword.control.deassign.sv
//           ^ variable.other.sv

always @(posedge clk)
  q <= d;
//^ variable.other.sv
//  ^^ keyword.operator.assignment.sv
//     ^ variable.other.sv


endmodule
