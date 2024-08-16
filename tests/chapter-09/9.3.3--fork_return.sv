// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: fork_return
:description: illegal return from fork
:should_fail_because: illegal return from fork
:tags: 9.3.3
:type: simulation elaboration
*/
module block_tb ();
  task fork_test;
    fork
//  ^^^^ keyword.control.fork.sv
      #20;
//    ^ punctuation.definition.delay.sv
//     ^^ constant.numeric.integer.sv
      return;
//    ^^^^^^ keyword.control.return.sv
    join_none
//  ^^^^^^^^^ keyword.control.join_none.sv
  endtask
endmodule
