// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_control_simulation_minimal
:description: Test event invocation
:tags: 9.4.2
:type: simulation elaboration
*/
module top();
   event e;

   int i = 0;

   initial begin
      $display(":assert: (0 == %d)", i);
      $display(":assert: (0 == %d)", $time);

      ->e;
//    ^^ punctuation.definition.event-trigger.sv

      #5;

      $display(":assert: (1 == %d)", i);
      $display(":assert: (5 == %d)", $time);

      $finish;
   end

   always @ (e) begin
//        ^^^^^ meta.event-control.sv
//           ^ variable.other.sv
      i++;
   end
endmodule
