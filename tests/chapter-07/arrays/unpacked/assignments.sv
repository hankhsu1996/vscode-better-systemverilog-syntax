// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array-unpacked-assignments
:description: Test unpacked arrays assignments
:tags: 7.6 7.4.2
:type: simulation elaboration parsing
*/
module top ();

int A [3:0];
int B [0:3];

initial begin
  A[0] = 0;
  A[1] = 1;
  A[2] = 2;
  A[3] = 3;

  B = A;

  $display(":assert: ((%d == 0) and (%d == 1) and (%d == 2) and (%d == 3))",
    B[3], B[2], B[1], B[0]);
end

endmodule
