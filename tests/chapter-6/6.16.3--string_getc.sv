// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_getc
:description: string.getc()  tests
:tags: 6.16.3
*/
module top();
  string a = "Test";
  byte b = a.getc(2);
//           ^^^^ entity.name.function.sv
endmodule
