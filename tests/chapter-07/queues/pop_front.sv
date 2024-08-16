// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pop_front
:description: Test queues pop_front function support
:tags: 7.10.2.4 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];
int r;

initial begin
  q.push_back(2);
  q.push_back(3);
  q.push_back(4);
  r = q.pop_front;
//      ^^^^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 2)", q.size);
  $display(":assert: (%d == 2)", r);
end

endmodule
