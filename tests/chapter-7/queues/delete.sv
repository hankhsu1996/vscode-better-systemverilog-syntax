// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: delete
:description: Test queues delete function support
:tags: 7.10.2.3 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];
int r;

initial begin
  q.push_back(2);
  q.push_back(3);
  q.push_back(4);
  $display(":assert: (%d == 3)", q.size);
  q.delete(0);
//  ^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 2)", q.size);
  q.delete;
  $display(":assert: (%d == 0)", q.size);
end

endmodule
