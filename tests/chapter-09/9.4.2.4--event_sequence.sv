// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: event_sequence
:description: sequence event test
:tags: 9.4.2.4
:type: simulation elaboration parsing
*/
module seq_tb ();
  logic a = 0;
  logic b = 0;
  logic c = 0;
  logic y = 0;
  logic clk = 0;

  // TODO: sequence is not supported by the current grammar
  sequence seq;
    @(posedge clk) a ##1 b ##1 c;
  endsequence

  initial begin
    fork
      begin
        @seq y = 1;
//      ^ punctuation.definition.event.sv
//       ^^^ variable.other.sv
        $display(":assert:(True)");
      end
      begin
        a = 1;
        #10 clk = 1;
        #10 clk = 0;
        b = 1;
        #10 clk = 1;
        #10 clk = 0;
        c = 1;
        #10 clk = 1;
        #10 clk = 0;
      end
    join
  end
endmodule
