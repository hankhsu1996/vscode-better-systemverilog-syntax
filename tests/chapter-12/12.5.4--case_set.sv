// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case_set
:description: A module testing case set membership
:tags: 12.5.4
*/
module case_tb ();
  reg [3:0] a = 0;
  reg [3:0] b = 0;
  always @* begin
    case(a) inside
//  ^^^^ keyword.control.case.sv
//          ^^^^^^ keyword.control.inside.sv
      1, 3: b = 1;
//    ^ constant.numeric.integer.sv
//     ^ punctuation.separator.comma.sv
//       ^ constant.numeric.integer.sv
      4'b01??, [5:6]: b = 2;
//    ^^^^^^^ constant.numeric.binary.sv
//           ^ punctuation.separator.comma.sv
//             ^^^^^ meta.dimension.sv
      default b = 3;
    endcase
  end
endmodule
