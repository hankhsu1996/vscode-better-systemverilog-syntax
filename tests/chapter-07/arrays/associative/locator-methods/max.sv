// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array-locator-methods-max
:description: Test support of array locator methods
:tags: 7.12.1 7.12 7.10
:type: simulation elaboration parsing
*/
module top ();

int s[] = { 10, 20, 2, 11, 5 };
int qi[$];

initial begin
  qi = s.max;
//       ^^^ entity.name.function.sv
  $display(":assert: (%d == 1)", qi.size);
  $display(":assert: (%d == 20)", qi[0]);
end

endmodule
