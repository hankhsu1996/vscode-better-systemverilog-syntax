// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string-special-chars
:description: Special characters in strings
:tags: 5.9.1
*/
module top();

  initial begin
    $display("newline \n");
//           ^^^^^^^^^^^^ string.quoted.double.sv
//                    ^^ constant.character.escape.sv
    $display("tab \t");
//           ^^^^^^^^ string.quoted.double.sv
//                ^^ constant.character.escape.sv
    $display("backslash \\");
//           ^^^^^^^^^^^^^^ string.quoted.double.sv
//                      ^^ constant.character.escape.sv
    $display("quote \"");
//           ^^^^^^^^^^ string.quoted.double.sv
//                  ^^ constant.character.escape.sv
    $display("vertical tab \v");
//           ^^^^^^^^^^^^^^^^^ string.quoted.double.sv
//                         ^^ constant.character.escape.sv
    $display("form feed \f");
//           ^^^^^^^^^^^^^^ string.quoted.double.sv
//                      ^^ constant.character.escape.sv
    $display("bell \a");
//           ^^^^^^^^^ string.quoted.double.sv
//                 ^^ constant.character.escape.sv
    $display("octal \123");
//           ^^^^^^^^^^^^ string.quoted.double.sv
//                  ^^^^ constant.character.escape.sv
    $display("hex \x12");
//           ^^^^^^^^^^ string.quoted.double.sv
//                ^^^^ constant.character.escape.sv
  end

endmodule
