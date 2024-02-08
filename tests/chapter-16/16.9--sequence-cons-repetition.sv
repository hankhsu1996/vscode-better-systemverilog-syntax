// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: sequence_consecutive_repetition_test
:description: sequence with consecutive repetition operator test
:tags: 16.9
*/

module top();

logic clk;
logic a;
logic b;

sequence seq;
    @(posedge clk) b ##1 a [*2:10] ##1 b;
//                   ^^ keyword.operator.cycle-delay.sv
//                     ^ constant.numeric.integer.sv
//                       ^ variable.other.sv
//                         ^^^^^^^ meta.consecutive-repetition.sv
//                         ^ punctuation.section.brackets.begin.sv
//                          ^ keyword.operator.consecutive-repetition.sv
//                           ^ constant.numeric.integer.sv
//                            ^ punctuation.separator.colon.sv
//                             ^^ constant.numeric.integer.sv
//                               ^ punctuation.section.brackets.end.sv
//                                 ^^ keyword.operator.cycle-delay.sv
//                                   ^ constant.numeric.integer.sv
//                                     ^ variable.other.sv
endsequence

assert property (seq);

endmodule
