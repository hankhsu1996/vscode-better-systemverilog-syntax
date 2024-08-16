// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-tagged-packed-union
:description: Test tagged packed union support
:tags: 7.3.2
:type: simulation elaboration parsing
*/
module top ();

union tagged packed {
//           ^^^^^^ storage.modifier.packed.sv
  bit [6:0] v1;
  bit [6:0] v2;
} un;

initial begin
  un = tagged v2 (10);
  un = tagged v1 (85); // 101_0101
  $display(":assert: ('%b' == 'v1:1010101'", un);
end

endmodule
