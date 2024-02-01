// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_putc
:description: string.putc()  tests
:tags: 6.16.2
*/
module top();
  string a = "Test";
  initial
    a.putc(2, "B");
//    ^^^^ entity.name.function.sv
endmodule
