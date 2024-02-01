// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: specparam
:description: specparam tests
:tags: 6.20.5
*/
module top();
  specparam delay = 50;
//^^^^^^^^^ storage.modifier.specparam.sv
//          ^^^^^ variable.other.constant.sv
//                ^ keyword.operator.assignment.sv
//                  ^^ constant.numeric.integer.sv
endmodule
