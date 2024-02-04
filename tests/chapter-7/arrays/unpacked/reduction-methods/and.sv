// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unpacked-array-reduction-method-and
:description: Test support of unpacked arrays reduction method and
:tags: 7.12.3 7.4.2
:type: simulation elaboration parsing
*/
module top ();

byte b[] = { 1, 3, 5, 7 };
int y;

initial begin
  $display(":assert: ((%d == 1) and (%d == 3) and (%d == 5) and (%d == 7))",
    b[0], b[1], b[2], b[3]);
  y = b.and;
//      ^^^ entity.name.function.sv
  $display(":assert: (%d == 1)", y);
end

endmodule
