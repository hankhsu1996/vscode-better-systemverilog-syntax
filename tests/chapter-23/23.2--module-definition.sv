// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: module_definition
:description: module definition test
:tags: 23.2
*/
  module top();
//^^^^^^ storage.type.module.sv
//       ^^^ entity.name.type.sv
//          ^ punctuation.section.group.begin.sv
//           ^ punctuation.section.group.end.sv
//            ^ punctuation.terminator.semicolon.sv
  endmodule
//^^^^^^^^^ storage.type.module.sv
