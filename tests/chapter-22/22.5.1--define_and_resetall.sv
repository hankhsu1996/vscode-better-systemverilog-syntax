// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_and_resetall
:description: The text macro facility is not affected by the compiler directive `resetall
:tags: 22.5.1
:type: simulation elaboration preprocessing
*/
`define SOMESTRING "somestring"
//<------ keyword.control.define.sv
//      ^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                 ^^^^^^^^^^^^ string.quoted.double.sv
`resetall
//<------ keyword.control.resetall.sv

module top ();
initial begin
         $display(":assert:('%s' == '%s')", `SOMESTRING, "somestring");
//                                          ^^^^^^^^^^^ meta.preprocessor.macro-name.sv
end
endmodule
