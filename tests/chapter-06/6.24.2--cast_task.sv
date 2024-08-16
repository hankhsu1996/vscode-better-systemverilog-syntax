// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cast_task
:description: $cast task
:tags: 6.24.2 8.16
*/
module top();
  int a;
  initial
    $cast(a, 2.1 * 3.7);
//  ^^^^^^^^^^^^^^^^^^^ meta.system-tf-call.sv
//  ^^^^^ entity.name.function.sv
//       ^ punctuation.section.group.begin.sv
//        ^ variable.other.sv
//         ^ punctuation.separator.comma.sv
//           ^^^ constant.numeric.real.sv
//               ^ keyword.operator.binary.sv
//                 ^^^ constant.numeric.real.sv
//                    ^ punctuation.section.group.end.sv
endmodule
