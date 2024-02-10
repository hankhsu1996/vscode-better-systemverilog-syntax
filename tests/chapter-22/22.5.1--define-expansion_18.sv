// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_18
:description: Test
:should_fail_because: For a macro with arguments, the parentheses are always required in the macro call, even if all the arguments have defaults. 
:tags: 22.5.1
:type: preprocessing
*/
`define MACRO3(a=5, b=0, c="C") initial $display(a,,b,,c);
module top ();
`MACRO3
endmodule
