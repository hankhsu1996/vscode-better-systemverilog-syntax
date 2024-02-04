// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-unpacked-structures
:description: Test unpacked structures support
:tags: 7.2 7.1
:type: simulation elaboration parsing
*/
module top ();

struct {
  bit [3:0] lo;
  bit [3:0] hi;
} p1;

initial begin
  p1.lo = 4'h5;
  p1.hi = 4'ha;
  $display(":assert: (('%h' == 'a') and ('%h' == '5'))", p1.hi, p1.lo);
end

endmodule
