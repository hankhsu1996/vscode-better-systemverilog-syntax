// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-unpacked-arrays-slice-equality
:description: Test unpacked arrays operations support (slice equality)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit arr_a [7:0];
bit arr_b [7:0];

initial begin
  arr_a = '{1, 1, 1, 1, 0, 0, 0, 0};
  arr_b = '{0, 0, 0, 0, 1, 1, 1, 1};
  $display(":assert: ('%b%b%b%b_%b%b%b%b' == '1111_0000')",
    arr_a[7], arr_a[6], arr_a[5], arr_a[4], arr_a[3], arr_a[2], arr_a[1], arr_a[0]);
  $display(":assert: ('%b%b%b%b_%b%b%b%b' == '0000_1111')",
    arr_b[7], arr_b[6], arr_b[5], arr_b[4], arr_b[3], arr_b[2], arr_b[1], arr_b[0]);

  $display(":assert: (%d == 1)", (arr_a[7:4] == arr_b[3:0]));
  $display(":assert: (%d == 0)", (arr_a[7:4] != arr_b[3:0]));
end

endmodule
