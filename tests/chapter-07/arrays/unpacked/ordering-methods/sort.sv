// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ordering-methods-sort
:description: Test support of sort method on unpacked arrays
:tags: 7.12.2 7.4.2
:type: simulation elaboration parsing
*/
module top ();

int ia[] = { 4, 5, 3, 1 };

initial begin
  $display(":assert: ((%d == 4) and (%d == 5) and (%d == 3) and (%d == 1))",
    ia[0], ia[1], ia[2], ia[3]);
  ia.sort;
//   ^^^^ entity.name.function.sv
  $display(":assert: ((%d == 1) and (%d == 3) and (%d == 4) and (%d == 5))",
    ia[0], ia[1], ia[2], ia[3]);
end

endmodule
