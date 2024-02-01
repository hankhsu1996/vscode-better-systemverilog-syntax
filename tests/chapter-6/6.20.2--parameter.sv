// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parameter
:description: parameter tests
:tags: 6.20.2
*/
module top();
  parameter p = 123;
//^^^^^^^^^ storage.modifier.parameter.sv
//          ^ variable.other.constant.sv
//            ^ keyword.operator.assignment.sv
//              ^^^ constant.numeric.integer.sv
endmodule
