// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assert_final_test
:description: assert final test
:tags: 16.4
*/
module top();

logic a = 1;

  assert final (a != 0);
//^^^^^^ keyword.control.assert.sv
//       ^^^^^ keyword.control.final.sv
//             ^ punctuation.section.group.begin.sv
//              ^ variable.other.sv
//                ^^ keyword.operator.binary.sv
//                   ^ constant.numeric.integer.sv
//                    ^ punctuation.section.group.end.sv
//                     ^ punctuation.terminator.semicolon.sv

endmodule
