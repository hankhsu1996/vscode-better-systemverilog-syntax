// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string_concat_op
:description: string concatenation operator test
:tags: 11.4.12.2
:type: simulation elaboration parsing
*/
module top();

string str;

initial begin
  str = {"Hello", "_", "World", "!"};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
//       ^^^^^^^ string.quoted.double.sv
//              ^ punctuation.separator.comma.sv
//                ^^^ string.quoted.double.sv
//                   ^ punctuation.separator.comma.sv
//                     ^^^^^^^ string.quoted.double.sv
//                            ^ punctuation.separator.comma.sv
//                              ^^^ string.quoted.double.sv
  $display(":assert:('%s' == 'Hello_World!')", str);
end

endmodule
