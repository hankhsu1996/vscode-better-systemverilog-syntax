// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: insert
:description: Test queues insert function support
:tags: 7.10.2.2 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];

initial begin
  q.insert(0, 1);
//  ^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 1)", q.size);
  $display(":assert: (%d == 1)", q[0]);
end

endmodule
