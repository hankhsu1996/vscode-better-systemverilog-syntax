// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: delay_control_sim
:description: delay control simulation
:tags: 9.4.1
:type: simulation elaboration
*/
module top();

   initial begin
      $display(":assert: (0 == %d)", $time);

      #10;
//    ^ punctuation.definition.delay.sv
//     ^^ constant.numeric.integer.sv
      $display(":assert: (10 == %d)", $time);

      #10;
      $display(":assert: (20 == %d)", $time);

      #10;
      $display(":assert: (30 == %d)", $time);

      $finish;
   end
endmodule
