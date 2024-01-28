// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: system-functions
:description: Calling system functions
:tags: 5.6.3
*/
module systemfn();
  /* Note:
   * This does not test all the individual system calls.
   * It just verifies if the concept exists using one of the
   * calls.
   */

  initial $display("hello world");
//        ^^^^^^^^ entity.name.function.sv
//                ^ punctuation.definition.parameters.sv
//                              ^ punctuation.definition.parameters.sv
endmodule
