// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_icompare
:description: string.icompare()  tests
:tags: 6.16.7
*/
module top();
  string a = "Test";
  string b = "TEST";
  int c = a.icompare(b);
//          ^^^^^^^^ entity.name.function.sv
endmodule
