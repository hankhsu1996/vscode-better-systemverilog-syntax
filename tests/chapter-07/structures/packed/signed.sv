// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: packed-and-signed-structures
:description: Test packed and signed structures support
:tags: 7.2.1 7.2
:type: simulation elaboration parsing
*/
module top ();

struct packed signed {
//            ^^^^^^ storage.modifier.signed.sv
  bit [3:0] lo;
  bit [3:0] hi;
} p1;

initial begin
  p1 = 8'd200;
  $display(":assert: ('%h' == 'c8')", p1);
  $display(":assert: (%d == -56)", p1);
end

endmodule
