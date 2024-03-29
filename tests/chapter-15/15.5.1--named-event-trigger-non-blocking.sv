// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: named_event_trigger_non_blocking
:description: Trigger named event, non-blocking
:tags: 15.5
:top_module: top
*/


module inner();
  initial
    ->> top.e;
//  ^^^ punctuation.definition.event-trigger.sv
endmodule

module top();

event e;

initial begin
  // Nonblocking trigger
  ->> e;
//^^^ punctuation.definition.event-trigger.sv
end

endmodule

class foo;

  event e;

  task wait_e();
    ->> e;
//  ^^^ punctuation.definition.event-trigger.sv
  endtask;

endclass

