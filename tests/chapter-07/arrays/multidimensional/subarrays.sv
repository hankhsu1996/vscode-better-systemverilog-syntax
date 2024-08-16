// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: subarrays
:description: Test multidimensional subarrays assignments
:tags: 7.4.5
:type: simulation elaboration parsing
*/

module top ();

int A[2][3][4], B[2][3][4];
//   ^^^ meta.dimension.sv
//      ^^^ meta.dimension.sv
//         ^^^ meta.dimension.sv
//            ^ punctuation.separator.comma.sv
//               ^^^ meta.dimension.sv
//                  ^^^ meta.dimension.sv
//                     ^^^ meta.dimension.sv
initial begin
  A[0][2][0] = 5;
// ^^^ meta.dimension.sv
//    ^^^ meta.dimension.sv
//       ^^^ meta.dimension.sv
  A[0][2][1] = 6;
  A[0][2][2] = 7;
  A[0][2][3] = 8;

  B[1][1] = A[0][2];
  $display(":assert: ((%d == 5) and (%d == 6) and (%d == 7) and (%d == 8))",
    B[1][1][0], B[1][1][1], B[1][1][2], B[1][1][3]);
end

endmodule
