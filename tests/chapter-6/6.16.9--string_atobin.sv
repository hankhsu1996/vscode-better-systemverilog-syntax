// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_atobin
:description: string.atobin()  tests
:tags: 6.16.9
*/
module top();
  string a = "10101";
  int b = a.atobin();
//          ^^^^^^ entity.name.function.sv
endmodule
