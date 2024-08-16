// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_toupper
:description: string.toupper()  tests
:tags: 6.16.4
*/
module top();
  string a = "Test";
  string b = a.toupper();
//             ^^^^^^^ entity.name.function.sv
endmodule
