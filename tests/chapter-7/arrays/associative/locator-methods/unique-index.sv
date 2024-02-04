// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array-locator-methods-unique-index
:description: Test support of array locator methods
:tags: 7.12.1 7.12 7.10 7.12.2
:type: simulation elaboration parsing
*/
module top ();

int s[] = { 10, 10, 3, 20, 20, 10 };
int qi[$];

initial begin
  qi = s.unique_index;
//       ^^^^^^^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 3)", qi.size);
  qi.sort;
//   ^^^^ entity.name.function.sv
  $display(":assert: ((%d == 0) and (%d == 2) and (%d == 3))",
    qi[0], qi[1], qi[2]);
end

endmodule
