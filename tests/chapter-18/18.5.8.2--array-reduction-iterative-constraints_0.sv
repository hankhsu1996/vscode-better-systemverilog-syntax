// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array_reduction_iterative_constraints_0
:description: array reduction iterative constraints test
:tags: 18.5.8.2
*/

class a;
    rand int B[5];
    constraint c { B.sum() == 5; }
//                 ^ variable.other.sv
//                  ^ punctuation.accessor.dot.sv
//                   ^^^ entity.name.function.sv
//                      ^ punctuation.section.group.begin.sv
//                       ^ punctuation.section.group.end.sv
//                         ^^ keyword.operator.binary.sv
//                            ^ constant.numeric.integer.sv
//                             ^ punctuation.terminator.semicolon.sv
endclass
