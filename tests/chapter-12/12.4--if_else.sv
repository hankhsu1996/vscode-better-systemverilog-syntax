// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else
:description: A module testing if-else statement
:tags: 12.4
*/
module if_tb ();
  wire a = 0;
  reg b = 0;
  always @* begin
    if (a) b = 1;
//  ^^^^^^ meta.conditional-statement.sv
//  ^^ keyword.control.if.sv
//     ^ punctuation.section.group.begin.sv
//      ^ variable.other.sv
//       ^ punctuation.section.group.end.sv
    else b = 0;
//  ^^^^ keyword.control.else.sv
  end
endmodule
