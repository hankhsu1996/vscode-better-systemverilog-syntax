// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_atoreal
:description: string.atoreal()  tests
:tags: 6.16.10
*/
module top();
  string a = "4.76";
  real b = a.atoreal();
//           ^^^^^^^ entity.name.function.sv
endmodule
