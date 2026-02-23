// SYNTAX TEST "source-text.sv"

module top();

  initial begin
    // Multi-line triple-quoted string
    $display("""
//           ^^^ punctuation.definition.string.begin.sv
      This is a multi-line
//    ^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
      raw string literal.
//    ^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
    """);
//  ^^^ punctuation.definition.string.end.sv

    // Multi-line with embedded quotes
    $display("""
      She said "hello"
//    ^^^^^^^^^^^^^^^^ string.quoted.triple.sv
      and he said "goodbye"
//    ^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.sv
    """);

    // Multi-line with backslashes (literal)
    $display("""
      path: C:\Users\test
//           ^^^^^^^^^^^^^ string.quoted.triple.sv
//                ^ -constant.character.escape.sv
    """);
  end

endmodule
