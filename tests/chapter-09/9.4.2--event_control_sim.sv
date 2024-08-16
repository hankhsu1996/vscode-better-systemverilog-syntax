// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_control_simulation
:description: Test event invocation
:tags: 9.4.2
:type: simulation elaboration
*/
module top();
   event e;

   int i = 0;

   initial begin
      // For now increment time and order locally only, do some simple checks
      #5;
      i++;
      $display(":assert: (1 == %d)", i);
      $display(":assert: (5 == %d)", $time);

      #5;
      i++;
      $display(":assert: (2 == %d)", i);
      $display(":assert: (10 == %d)", $time);

      // Run event a, i should be incremented inside that event
      #2;
      ->e;

      // i is not incremented until the next delay
      $display(":assert: (2 == %d)", i);
      // but time already is
      $display(":assert: (12 == %d)", $time);
      #3;

      $display(":assert: (3 == %d)", i);
      $display(":assert: (15 == %d)", $time);

      $finish;
   end

   always @ (e) begin
      i++;
   end
endmodule
