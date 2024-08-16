// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: pop_back-assign
:description: Update queue by assignment (pop_back)
:tags: 7.10.4
:type: simulation elaboration parsing
*/
module top ();

int q[$];
int r;

initial begin
  q = { 2, 3, 4 };
  r = q[$];
  q = q[0:$-1]; // void'(q.pop_back()) or q.delete(q.size-1)
//     ^^^^^^^ meta.dimension.sv
//        ^ constant.numeric.dollar.sv
//         ^ keyword.operator.binary.sv
//          ^ constant.numeric.integer.sv
  $display(":assert: (%d == 2)", q.size);
  $display(":assert: (%d == 4)", r);
end

endmodule
