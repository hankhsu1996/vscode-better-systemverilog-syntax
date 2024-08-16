// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-packed-arrays-slice-rw
:description: Test packed arrays operations support (R&W slice)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr_a;
bit [7:0] arr_b;

initial begin
  arr_a = 8'hff;
  arr_b = 8'h00;
  $display(":assert: (('%h' == 'ff') and ('%h' == '00'))", arr_a, arr_b);

  arr_b[5:3] = arr_a[2:0];
//     ^^^^^ meta.dimension.sv
//                  ^^^^^ meta.dimension.sv
  $display(":assert: ('%b' == '00111000')", arr_b);
end

endmodule
