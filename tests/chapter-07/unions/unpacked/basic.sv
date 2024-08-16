// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-union
:description: Test basic union support
:tags: 7.3
:type: simulation elaboration parsing
*/
module top ();

union {
  bit [7:0] v1;
  bit [3:0] v2;
} un;

initial begin
  un.v1 = 8'd140;
  $display(":assert: (%d == 140)", un.v1);
  $display(":assert: (%d == 12)", un.v2);
end

endmodule
