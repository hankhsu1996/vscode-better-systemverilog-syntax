// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: size
:description: Test queues size support
:tags: 7.10.2.1 7.10.2
:type: simulation elaboration parsing
*/
module top ();

int q[$];

initial begin
  $display(":assert: (%d == 0)", q.size);
//                                 ^^^^ entity.name.function.sv
end

endmodule
