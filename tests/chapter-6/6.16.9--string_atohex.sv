// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_atohex
:description: string.atohex()  tests
:tags: 6.16.9
*/
module top();
  string a = "0xff";
  int b = a.atohex();
//          ^^^^^^ entity.name.function.sv
endmodule
