// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_bintoa
:description: string.bintoa()  tests
:tags: 6.16.14
*/
module top();
  string a;
  initial
    a.bintoa(12);
//    ^^^^^^ entity.name.function.sv
endmodule
