// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: for_loop
:description: A module testing for loop
:tags: 12.7.1
*/
module for_tb ();
  initial begin
    for (int i = 0; i < 256; i++)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.for.sv
//  ^^^ keyword.control.for.sv
//       ^^^ entity.name.type.int.sv
//           ^ variable.other.sv
//             ^ keyword.operator.assignment.sv
//               ^ constant.numeric.integer.sv
//                ^ punctuation.terminator.semicolon.sv
//                  ^ variable.other.sv
//                    ^ keyword.operator.binary.sv
//                      ^^^ constant.numeric.integer.sv
//                         ^ punctuation.terminator.semicolon.sv
//                           ^ variable.other.sv
//                            ^^ keyword.operator.incdec.sv
    $display("%d", i);
  end
endmodule
