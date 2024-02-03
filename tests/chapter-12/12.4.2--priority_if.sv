// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: priority_if
:description: A module testing priority-if statement
:tags: 12.4.2
*/
module if_tb ();
  wire [3:0] a = 0;
  reg [1:0] b = 0;
  always @* begin
    priority if (a[0] == 0) b = 1;
//  ^^^^^^^^ keyword.control.priority.sv
//           ^^^^^^^^^^^^^^ meta.conditional-statement.sv
    else if (a[1] == 0) b = 2;
//  ^^^^ keyword.control.else.sv
//       ^^^^^^^^^^^^^^ meta.conditional-statement.sv
//       ^^ keyword.control.if.sv
  end
endmodule
