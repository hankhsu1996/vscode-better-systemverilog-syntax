// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ordering-methods-shuffle
:description: Test support of shuffle method on unpacked arrays
:tags: 7.12.2 7.4.2
:type: simulation elaboration parsing
*/
module top ();

int ia[] = { 1, 2, 3, 4, 5 };

initial begin
  $display(":info: { %d, %d, %d, %d, %d }",
    ia[0], ia[1], ia[2], ia[3], ia[4]);
  ia.shuffle;
//   ^^^^^^^ entity.name.function.sv
  $display(":info: { %d, %d, %d, %d, %d }",
    ia[0], ia[1], ia[2], ia[3], ia[4]);
end

endmodule
