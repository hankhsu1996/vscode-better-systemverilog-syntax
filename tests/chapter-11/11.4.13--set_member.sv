// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: set_member
:description: inside operator test
:tags: 11.4.13
*/
module top();

int a;
int b = 12;
localparam c = 5;
localparam d = 7;

initial begin
  a = b inside {c, d};
//    ^ variable.other.sv
//      ^^^^^^ keyword.control.inside.sv
//             ^^^^^^ meta.concatenation.sv
end

endmodule
