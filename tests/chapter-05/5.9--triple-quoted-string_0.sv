// SYNTAX TEST "source-text.sv"

module top();

  initial begin
    // Basic triple-quoted string
    $display("""hello world""");
//           ^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
//           ^^^ punctuation.definition.string.begin.sv
//                         ^^^ punctuation.definition.string.end.sv

    // Inner double quotes
    $display("""say "hello" please""");
//           ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
//           ^^^ punctuation.definition.string.begin.sv
//                                ^^^ punctuation.definition.string.end.sv

    // Inner consecutive double quotes
    $display("""he said ""wow"" """);
//           ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
//           ^^^ punctuation.definition.string.begin.sv
//                              ^^^ punctuation.definition.string.end.sv

    // Backslashes are literal (no escape processing)
    $display("""backslash: \n and \t""");
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
//                         ^^ -constant.character.escape.sv
//                                  ^^^ punctuation.definition.string.end.sv

    // Empty triple-quoted string
    $display("""""");
//           ^^^^^^ string.quoted.triple.sv
//           ^^^ punctuation.definition.string.begin.sv
//              ^^^ punctuation.definition.string.end.sv

    // Regular string still works
    $display("normal string");
//           ^^^^^^^^^^^^^^^ string.quoted.double.sv
  end

endmodule
