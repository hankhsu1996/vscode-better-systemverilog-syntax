// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: push_front
:description: Test queues push_front function support
:tags: 7.10.2.6 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];

initial begin
  q.push_front(2);
//  ^^^^^^^^^^ entity.name.function.sv
  q.push_front(3);
  q.push_front(4);
  $display(":assert: (%d == 3)", q.size);
  $display(":assert: (%d == 4)", q[0]);
end

endmodule
