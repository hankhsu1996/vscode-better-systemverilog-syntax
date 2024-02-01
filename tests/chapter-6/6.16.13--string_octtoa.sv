// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_octtoa
:description: string.octtoa()  tests
:tags: 6.16.13
*/
module top();
  string a;
  initial
    a.octtoa(12);
//    ^^^^^^ entity.name.function.sv
endmodule
