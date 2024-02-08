// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: sequence_goto_repetition_test
:description: sequence with goto repetition operator test
:tags: 16.9
*/

module top();

logic clk;
logic a;
logic b;

sequence seq;
    @(posedge clk) b ##1 a [->2:10] ##1 b;
//                         ^^^^^^^^ meta.goto-repetition.sv
//                         ^ punctuation.section.brackets.begin.sv
//                          ^^ keyword.operator.goto-repetition.sv
//                            ^ constant.numeric.integer.sv
//                             ^ punctuation.separator.colon.sv
//                              ^^ constant.numeric.integer.sv
//                                ^ punctuation.section.brackets.end.sv
endsequence

assert property (seq);

endmodule
