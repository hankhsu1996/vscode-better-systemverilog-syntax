// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: named_event_trigger_blocking
:description: Trigger named event, blocking
:tags: 15.5
:top_module: top
*/

// The '->' operator is used in both binary operators and event triggers.
// We don't need to verify the correctness of the operator types in this context.

module inner();
  initial
    -> top.e;
//  ^^ keyword.operator.binary.sv
//     ^^^ variable.other.sv
//        ^ punctuation.accessor.dot.sv
//         ^ variable.other.sv
//          ^ punctuation.terminator.semicolon.sv
endmodule

module top();

event e;

initial begin
  // Normal trigger
  -> e;
//^^ keyword.operator.binary.sv
  // Nonblocking trigger
  ->> e;
//^^^ keyword.operator.binary.sv
end

endmodule

class foo;

  event e;

  task wait_e();
    ->e;
//  ^^ keyword.operator.binary.sv
//    ^ variable.other.sv
  endtask;

endclass

