// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: copy
:description: Test multidimensional word copy
:tags: 7.4.5
:type: simulation elaboration parsing
*/

module top ();

bit [3:0] [7:0] arr_a [1:10];
bit [3:0] [7:0] arr_b [1:10];

initial begin
  arr_a[1] = 32'hdeadbeef;
  $display(":assert: ('%h' == 'deadbeef')", arr_a[1]);

  arr_b[2] = arr_a[1];
  $display(":assert: ('%h' == 'deadbeef')", arr_b[2]);
end

endmodule
