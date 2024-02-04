// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: slice
:description: Test queues slice support
:tags: 7.10.1 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$:5];
int r[$];

initial begin
  q.push_back(0);
  q.push_back(1);
  q.push_back(2);
  q.push_back(3);
  q.push_back(4);
  q.push_back(5);
  $display(":assert: (%d == 6)", q.size);

  r = q[ 2 : 4 ];
  $display(":assert: (%d == 3)", r.size); // 4 - 2 + 1 elements

  // a > b gives empty queue
  r = q[ 4 : 2 ];
  $display(":assert: (%d == 0)", r.size);

  // a == b gives one element queue
  r = q[ 2 : 2 ];
  $display(":assert: (%d == 1)", r.size);

  // a < 0 is same as [ 0 : b ]
  r = q[ -2 : 2 ]; // 2 - 0 + 1 = 3
  $display(":assert: (%d == 3)", r.size);

  // b > $ is same as [ a : $ ]
  r = q[ 2 : 10 ]; // 5 - 2 + 1 = 4
  $display(":assert: (%d == 4)", r.size);

  // TODO: More invalid index values
end

endmodule
