// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: queues-elements-persistence
:description: Test status of persistence of references to elements of queue
:tags: 7.10.3
:type: simulation elaboration parsing
*/
module top ();

int q[$];

task automatic fun(ref int e);
  $display(":assert: (%d == 2)", e);
  #100
  e = 10;
  $display(":assert: (%d == 10)", e);
endtask

initial begin
  q.push_back(1);
  q.push_back(2);
  q.push_back(3);
  $display(":assert: ((%d == 1) and (%d == 2) and (%d == 3))",
    q[0], q[1], q[2]);
  fun(q[1]);
end

initial begin
  #50
  $display(":assert: (%d == 2)", q[1]);
  q.delete();
  #100;
  $display(":assert: (%d == 0)", q.size);
end

endmodule
