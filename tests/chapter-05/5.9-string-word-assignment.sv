// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string-word-assignment
:description: String assignment tests
:tags: 5.9
*/
module top();
  bit [8 * 3 - 1 : 0] a = "hi0";
//                        ^^^^^ string.quoted.double.sv
//                        ^ punctuation.definition.string.begin.sv
//                            ^ punctuation.definition.string.end.sv
  // Note as of January 2020 several commercial simulators do not support unpacked byte
  // assignment from strings:
  byte      b[3 : 0] = "hi2";
//                     ^^^^^ string.quoted.double.sv
//                     ^ punctuation.definition.string.begin.sv
//                         ^ punctuation.definition.string.end.sv

endmodule
