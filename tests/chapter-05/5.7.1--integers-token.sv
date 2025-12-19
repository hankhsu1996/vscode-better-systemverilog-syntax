// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: integers-token
:description: Testing the integer variable type
:tags: 5.7.1
*/
module top();
  integer a;
//^^^^^^^ entity.name.type.sv
endmodule
