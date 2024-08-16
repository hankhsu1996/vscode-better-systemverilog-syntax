// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unpacked-structures-members-default-value
:description: Test unpacked structures members default value support
:tags: 7.2.2
:type: simulation elaboration parsing
*/
module top ();

parameter c = 4'h5;

struct {
  bit [3:0] lo = c;
//             ^ keyword.operator.assignment.sv
//               ^ variable.other.sv
  bit [3:0] hi;
} p1;

initial begin
  p1.hi = 4'ha;
  $display(":assert: (('%h' == 'a') and ('%h' == '5'))", p1.hi, p1.lo);
end

endmodule
