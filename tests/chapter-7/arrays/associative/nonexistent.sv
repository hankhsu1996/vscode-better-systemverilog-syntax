// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-access-nonexistent
:description: Test access to nonexistent associative array element
:tags: 7.8.6 7.9.1
:type: simulation elaboration parsing
*/
module top ();

int arr [ int ];
int r;

initial begin
  arr[10] = 10;
  $display(":assert: (%d == 1)", arr.size);

  // access nonexistent element
  $display(":re: BEGIN:ARRAY_NONEXISTENT");
  r = arr[9];
  $display(":re: END");
end

endmodule
