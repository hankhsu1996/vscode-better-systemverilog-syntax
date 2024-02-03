// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: casex
:description: A module testing casex statement
:tags: 12.5.1
*/
module case_tb ();
  wire [3:0] a = 4'b10zx;
  reg [3:0] b = 0;
  always @* begin
    casex(a)
//  ^^^^^ keyword.control.casex.sv
      4'b1xz?: b = 1;
      4'b01xx: b = 2;
      4'b001x: b = 3;
      4'b0001: b = 4;
      default b = 0;
    endcase
  end
endmodule
