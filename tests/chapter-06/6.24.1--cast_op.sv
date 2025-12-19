// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cast_op
:description: cast operator
:tags: 6.24.1
*/
module top();
  int a = int'(2.1 * 3.7);
//        ^^^ entity.name.type.int.sv
//           ^ punctuation.definition.casting.sv
//            ^ punctuation.section.group.begin.sv
//             ^^^ constant.numeric.real.sv
//                 ^ keyword.operator.binary.sv
//                   ^^^ constant.numeric.real.sv
//                      ^ punctuation.section.group.end.sv
endmodule
