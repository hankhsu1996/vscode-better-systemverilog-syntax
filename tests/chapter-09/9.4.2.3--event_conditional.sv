// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_conditional
:description: event conditional
:tags: 9.4.2.3
*/
module block_tb ();
  wire clk = 0;
  wire en = 0;
  wire a = 0;
  reg y;
  always @(posedge clk iff en == 1)
//         ^^^^^^^ keyword.other.posedge.sv
//                 ^^^ variable.other.sv
//                     ^^^ keyword.control.iff.sv
//                         ^^ variable.other.sv
//                            ^^ keyword.operator.binary.sv
//                               ^ constant.numeric.integer.sv
    y <= a;
endmodule
