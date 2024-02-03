// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: casez
:description: A module testing casez statement
:tags: 12.5.1
*/
module case_tb ();
  wire [3:0] a = 4'b1z11;
  reg [3:0] b = 0;
  always @* begin
    casez(a)
//  ^^^^^ keyword.control.casez.sv
      4'b1zzz: b = 1;
      4'b01z?: b = 2;
      4'b001z: b = 3;
      4'b0001: b = 4;
      default b = 0;
    endcase
  end
endmodule
