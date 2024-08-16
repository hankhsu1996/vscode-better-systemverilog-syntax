// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-packed-arrays-equality
:description: Test packed arrays operations support (equality)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr_a;
bit [7:0] arr_b;

initial begin
  arr_a = 8'hff;
  arr_b = 8'hff;
  $display(":assert: (('%h' == 'ff') and ('%h' == 'ff'))", arr_a, arr_b);

  $display(":assert: (%d == 1)", (arr_a == arr_b));
//                                      ^^ keyword.operator.binary.sv
  $display(":assert: (%d == 0)", (arr_a != arr_b));
//                                      ^^ keyword.operator.binary.sv
end

endmodule
