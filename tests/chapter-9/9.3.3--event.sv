// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_order
:description: event order test
:tags: 9.3.3
*/

// Note: there is the same '->' operator in binary operator and event control.
// We don't care about the difference here.

module block_tb ();
  event ev;
//^^^^^ entity.name.type.event.sv
  reg [3:0] a = 0;
  initial fork
    begin
      a = 'h3;
      #20;
//    ^ punctuation.definition.delay.sv
//     ^^ constant.numeric.integer.sv
      ->ev;
//    ^^ punctuation.definition.event-trigger.sv
    end
    begin
      @ev
//    ^ punctuation.definition.event.sv
//     ^^ variable.other.sv
      a = 'h4;
    end
  join
endmodule
