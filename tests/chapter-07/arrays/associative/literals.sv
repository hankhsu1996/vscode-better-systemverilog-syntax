// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-literals
:description: Test associative arrays literals support
:tags: 7.9.11 7.8
:type: simulation elaboration parsing
*/
module top ();

string words [int] = '{default: "hello"};
//                   ^^ punctuation.section.braces.begin.sv
//                     ^^^^^^^ keyword.other.default.sv
//                            ^ punctuation.separator.colon.sv
//                              ^^^^^^^ string.quoted.double.sv
//                                     ^ punctuation.section.braces.end.sv
initial begin
  $display(":assert: ('%s' == 'hello')", words[1]);
  words[1] = "world";
  $display(":assert: (('%s' == 'hello') and ('%s' == 'world'))",
    words[0], words[1]);
end

endmodule
