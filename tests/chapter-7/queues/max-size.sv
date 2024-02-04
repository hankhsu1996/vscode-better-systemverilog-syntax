// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: max-size
:description: Test queues size support
:tags: 7.10.1 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$:5];

initial begin
  q.push_back(0);
  q.push_back(1);
  q.push_back(2);
  q.push_back(3);
  q.push_back(4);
  q.push_back(5);
  $display(":assert: (%d == 6)", q.size);

  // should issue warning
  q.push_back(6);
  $display(":assert: (%d == 6)", q.size);
end

endmodule
