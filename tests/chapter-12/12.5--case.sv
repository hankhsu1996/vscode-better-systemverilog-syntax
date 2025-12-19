// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case
:description: A module testing case statement
:tags: 12.5
*/
module case_tb ();
  wire [3:0] a = 0;
  reg [3:0] b = 0;
  always @* begin
    case (a)
//  ^^^^^^^^ meta.case-statement.sv
//  ^^^^ keyword.control.case.sv
//       ^ punctuation.section.group.begin.sv
//        ^ variable.other.sv
//         ^ punctuation.section.group.end.sv
      4'h0: b = 12;
//    ^^^^^^^^^^^^^ meta.case-statement.sv
//    ^^^^ constant.numeric.hex.sv
//        ^ punctuation.separator.colon.sv
//          ^ variable.other.sv
//            ^ keyword.operator.assignment.sv
//              ^^ constant.numeric.integer.sv
      4'h3: b = 4;
//    ^^^^^^^^^^^^ meta.case-statement.sv
      4'hf: b = 8;
//    ^^^^^^^^^^^^ meta.case-statement.sv
      default b = 0;
//    ^^^^^^^^^^^^^^ meta.case-statement.sv
//    ^^^^^^^ keyword.control.default.sv
      4'h1: if (a) b = 1;
//          ^^ keyword.control.if.sv
    endcase
//  ^^^^^^^ meta.case-statement.sv
//  ^^^^^^^ keyword.control.endcase.sv
  end
endmodule
