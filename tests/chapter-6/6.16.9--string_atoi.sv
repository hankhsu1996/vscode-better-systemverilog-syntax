// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_atoi
:description: string.atoi()  tests
:tags: 6.16.9
*/
module top();
  string a = "1234";
  int b = a.atoi();
//          ^^^^ entity.name.function.sv
endmodule
