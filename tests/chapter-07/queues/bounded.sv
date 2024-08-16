// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: bounded-queues
:description: Test bounded queues support
:tags: 7.10.5 7.10 7.10.2.7 7.10.2.1
:type: simulation elaboration parsing
*/
module top ();

int q[$:2]; // 3 elements
//    ^ constant.numeric.dollar.sv
//     ^ punctuation.separator.colon.sv
//      ^ constant.numeric.integer.sv

initial begin
  q.push_back(1);
//  ^^^^^^^^^ entity.name.function.sv
  q.push_back(2);
  q.push_back(3);
  $display(":assert: ((%d == 1) and (%d == 2) and (%d == 3))",
    q[0], q[1], q[2]);

  $display(":re: BEGIN:QUEUE_FULL"); // expect warning
  q.push_back(4);
  $display(":re: END");
  $display(":assert: (%d==3)", q.size);
end

endmodule
