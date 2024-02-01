// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: proc_assignment__bad
:description: continuous assignment with delay test
:should_fail_because: Illegal to procedurally assign to wire, IEEE Table 10-1
:tags: 10.3
:type: simulation elaboration
*/
module top(input a, input b);

wire w;

// Illegal to procedurally assign to wire, IEEE Table 10-1
initial
  w = #10 a & b;
//^ variable.other.sv
//  ^ keyword.operator.assignment.sv
//    ^ punctuation.definition.delay.sv
//     ^^ constant.numeric.integer.sv
//        ^ variable.other.sv
//          ^ keyword.operator.binary.sv
//            ^ variable.other.sv

endmodule
