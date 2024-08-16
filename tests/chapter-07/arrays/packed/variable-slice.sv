// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-packed-arrays-variable-slice-rw
:description: Test packed arrays operations support (Variable slice)
:tags: 7.4.3 7.4.6
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr_a;
bit [7:0] arr_b;

parameter integer c = 3;

initial begin
  arr_a = 8'hff;
  arr_b = 8'h00;
  $display(":assert: (('%h' == 'ff') and ('%h' == '00'))", arr_a, arr_b);

  arr_b[4+:c] = arr_a[1+:c];
//     ^^^^^^ meta.dimension.sv
//      ^ constant.numeric.integer.sv
//       ^^ punctuation.separator.pluscolon.sv
//         ^ variable.other.sv
//                   ^^^^^^ meta.dimension.sv
//                    ^ constant.numeric.integer.sv
//                     ^^ punctuation.separator.pluscolon.sv
//                       ^ variable.other.sv
  $display(":assert: ('%b' == '01110000')", arr_b);
end

endmodule
