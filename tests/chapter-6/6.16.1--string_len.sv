// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_len
:description: string.len()  tests
:tags: 6.16.1
*/
module top();
  string a = "Test";
  int b = a.len();
//         ^ punctuation.accessor.dot.sv
//          ^^^ entity.name.function.sv
//             ^ punctuation.section.group.begin.sv
//              ^ punctuation.section.group.end.sv
endmodule
