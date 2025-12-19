// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: vector_vectored_inv
:description: vectored vector invalid access tests
:should_fail_because: bit selects are not permitted on vectored vector nets
:tags: 6.9.2
*/
module top();
  logic vectored [15:0] a = 0;
//^^^^^ entity.name.type.sv
//      ^^^^^^^^ storage.modifier.vectored.sv
  assign a[1] = 1;
endmodule
