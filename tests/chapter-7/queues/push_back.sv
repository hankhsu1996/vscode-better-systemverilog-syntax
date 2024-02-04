// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: push_back
:description: Test queues push_back function support
:tags: 7.10.2.7 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];

initial begin
  q.push_back(4);
//  ^^^^^^^^^ entity.name.function.sv
  q.push_back(3);
  q.push_back(2);
  $display(":assert: (%d == 3)", q.size);
  $display(":assert: (%d == 4)", q[0]);
end

endmodule
