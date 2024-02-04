// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pop_front-assign
:description: Update queue by assignment (pop_front)
:tags: 7.10.4
:type: simulation elaboration parsing
*/
module top ();

int q[$];
int r;

initial begin
  q.push_back(2);
  q.push_back(3);
  q.push_back(4);
  r = q[0];
  q = q[1:$];
  $display(":assert: (%d == 2)", q.size);
  $display(":assert: (%d == 2)", r);
  $display(":assert: (%d == 3)", q[0]);
end

endmodule
