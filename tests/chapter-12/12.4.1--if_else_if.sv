// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_if
:description: A module testing if-else-if statement
:tags: 12.4.1
*/
module if_tb ();
  wire a = 0;
  reg b = 0;
  wire c = 0;
  reg d = 0;
  always @* begin
    if (a) b = 1;
//  ^^^^^^ meta.conditional-statement.sv
//  ^^ keyword.control.if.sv
    else if (c) d = 1;
//  ^^^^ keyword.control.else.sv
//       ^^^^^^ meta.conditional-statement.sv
//       ^^ keyword.control.if.sv
    else b = 0;
//  ^^^^ keyword.control.else.sv
  end
endmodule
