// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case_constant
:description: A module testing case statement with constant expression
:tags: 12.5.2
*/
module case_tb ();
  wire [3:0] a = 0;
  reg [3:0] b = 0;
  always @* begin
    case(1)
//  ^^^^ meta.case-statement.sv
//       ^ constant.numeric.integer.sv
      a[0] : b = 1;
//    ^ variable.other.sv
//     ^^^ meta.dimension.sv
      a[1] : b = 2;
      a[2] : b = 3;
      a[3] : b = 4;
      default b = 0;
    endcase
  end
endmodule
