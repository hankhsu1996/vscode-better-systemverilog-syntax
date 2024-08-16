// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: nonescaped-access
:description: Escaped identifiers can be referenced by nonescaped name
:tags: 5.6.1
*/
`default_nettype none
module identifiers();

  reg \cpu3 ;
//    ^^^^^ variable.other.sv
  wire reference_test;
//     ^^^^^^^^^^^^^^ variable.other.sv

  assign reference_test = cpu3;
//       ^^^^^^^^^^^^^^ variable.other.sv
//                        ^^^^ variable.other.sv

endmodule
