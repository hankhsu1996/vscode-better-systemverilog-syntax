// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: debug-directives
:description: Debugging compiler directives
:tags: 5.6.4
*/

module directives();
  initial $display("At %s @ %d\n", `__FILE__, `__LINE__);
//                                 ^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                            ^^^^^^^^^ meta.preprocessor.macro-name.sv
endmodule;
