// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: debug-line
:description: Debugging compiler directives
:tags: 5.6.4
*/

module directives();
  `line 1 "5.6.4--compiler-directives-debug-line.sv" 1
//^^^^^ keyword.control.line.sv
//      ^ constant.numeric.integer.sv
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.sv
//                                                   ^ constant.numeric.integer.sv
endmodule
