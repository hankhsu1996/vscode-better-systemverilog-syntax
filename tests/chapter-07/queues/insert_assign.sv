// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: insert-assign
:description: Update queue by assignment (insert)
:tags: 7.10.4
:type: simulation elaboration parsing
*/
module top ();

int q[$];

initial begin
  q = { 1, 2, 3, 4 };
  q = { q[0:1], 10, q[2:$] }; // q.insert(2, 10)
//    ^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
//       ^^^^^ meta.dimension.sv
//              ^^ constant.numeric.integer.sv
//                   ^^^^^ meta.dimension.sv
//                    ^ constant.numeric.integer.sv
//                      ^ constant.numeric.dollar.sv
  $display(":assert: (%d == 5)", q.size);
  $display(":assert: (%d == 10)", q[2]);
end

endmodule
