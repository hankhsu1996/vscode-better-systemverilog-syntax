// SYNTAX TEST "source-text.sv"

// Comment-like sequences, git markers, and macro references inside an ordinary
// string literal are all literal characters, not real tokens (IEEE 1800 5.9).
// Macros only expand in the `define `"..."` construct, tested in chapter 22.

module top ();

initial begin
  a = "line // still string";
//         ^^ string.quoted.double.sv
  b = "block /* still */ string";
//          ^^ string.quoted.double.sv
//                   ^^ string.quoted.double.sv
  c = "marker ======= still string";
//            ^^^^^^^ string.quoted.double.sv
  d = "macro `FOO is literal here";
//           ^^^^ string.quoted.double.sv
end

endmodule
