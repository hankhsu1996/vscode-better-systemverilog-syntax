// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: specparam_inv
:description: specparam assignment to param should be invalid
:should_fail_because: specparam assignment to param should be invalid
:tags: 6.20.5
:type: simulation elaboration
*/
module top();
  specparam delay = 50;
//^^^^^^^^^ storage.modifier.specparam.sv
//          ^^^^^ variable.other.constant.sv
//                ^ keyword.operator.assignment.sv
//                  ^^ constant.numeric.integer.sv
  parameter p = delay + 2;
//^^^^^^^^^ storage.modifier.parameter.sv
//          ^ variable.other.constant.sv
//            ^ keyword.operator.assignment.sv
//              ^^^^^ variable.other.sv
//                    ^ keyword.operator.binary.sv
//                      ^ constant.numeric.integer.sv
endmodule
