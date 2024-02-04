// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-packed-arrays-rw
:description: Test packed arrays operations support (R & W)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr;

initial begin
  arr = 8'h00;
  $display(":assert: ('%h' == '00')", arr);

  arr = 8'hde;
  $display(":assert: ('%h' == 'de')", arr);

  arr = 8'had;
  $display(":assert: ('%h' == 'ad')", arr);
end

endmodule
