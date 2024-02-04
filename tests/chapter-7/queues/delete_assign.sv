// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: delete-assign
:description: Update queue by assignment (delete)
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
  $display(":assert: (%d == 3)", q.size);
  q = q[1:$]; // q.delete(0)
//     ^^^^^ meta.dimension.sv
  $display(":assert: (%d == 2)", q.size);
  q = {}; // q.delete
//    ^^ meta.concatenation.sv
  $display(":assert: (%d == 0)", q.size);
end

endmodule
