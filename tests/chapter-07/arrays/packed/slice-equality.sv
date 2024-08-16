// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-packed-arrays-slice-equality
:description: Test packed arrays operations support (slice equality)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr_a;
bit [7:0] arr_b;

initial begin
  arr_a = 8'hf0;
  arr_b = 8'h0f;
  $display(":assert: (('%h' == 'f0') and ('%h' == '0f'))", arr_a, arr_b);

  $display(":assert: (%d == 1)", (arr_a[7:4] == arr_b[3:0]));
//                                     ^^^^^ meta.dimension.sv
//                                                   ^^^^^ meta.dimension.sv
  $display(":assert: (%d == 0)", (arr_a[7:4] != arr_b[3:0]));
end

endmodule
