// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_realtoa
:description: string.realtoa()  tests
:tags: 6.16.15
*/
module top();
  string a;
  initial
    a.realtoa(4.76);
//    ^^^^^^^ entity.name.function.sv
endmodule
