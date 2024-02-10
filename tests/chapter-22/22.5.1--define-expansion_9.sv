// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_9
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define MACRO1(a=5,b="B",c) initial $display(a,,b,,c);
//             ^ variable.other.sv
//              ^ keyword.operator.assignment.sv
//               ^ constant.numeric.integer.sv
//                 ^ variable.other.sv
//                  ^ keyword.operator.assignment.sv
//                   ^^^ string.quoted.double.sv
//                       ^ variable.other.sv
module top ();
`MACRO1 ( , 2, 3 )
endmodule
