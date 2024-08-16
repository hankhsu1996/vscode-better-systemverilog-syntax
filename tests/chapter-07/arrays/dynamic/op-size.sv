// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic-arrays-op-size
:description: Test dynamic arrays operator size support
:tags: 7.5.2
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr[];

initial begin
  arr = new [ 16 ];
  $display(":assert: (%d == 16)", arr.size);
//                                    ^^^^ entity.name.function.sv
  arr = new [ 8 ];
  $display(":assert: (%d == 8)", arr.size);
end

endmodule
