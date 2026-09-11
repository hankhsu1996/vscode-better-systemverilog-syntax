// SYNTAX TEST "source-text.sv"

/*
:name: net_aliasing
:description: net alias statement test
:tags: 10.11
*/

module net_alias_test (inout wire [31:0] w, inout wire [7:0] lsb, msb);

  wire [3:0] bus_a;
  wire [3:0] bus_b;

  // Simplest form: two names for the same net
  alias bus_a = bus_b;
//^^^^^ keyword.control.alias.sv
//      ^^^^^ variable.other.sv
//            ^ keyword.operator.assignment.sv
//              ^^^^^ variable.other.sv
//                   ^ punctuation.terminator.semicolon.sv

  // The same net may appear in several alias statements; effects are cumulative
  alias chain_a = chain_b;
//^^^^^ keyword.control.alias.sv
//      ^^^^^^^ variable.other.sv
//              ^ keyword.operator.assignment.sv
//                ^^^^^^^ variable.other.sv
//                       ^ punctuation.terminator.semicolon.sv

  alias chain_b = chain_c;
//^^^^^ keyword.control.alias.sv
//      ^^^^^^^ variable.other.sv
//              ^ keyword.operator.assignment.sv
//                ^^^^^^^ variable.other.sv
//                       ^ punctuation.terminator.semicolon.sv

  // More than two net_lvalues in one statement
  alias rst = reset = rst_n = resetn;
//^^^^^ keyword.control.alias.sv
//      ^^^ variable.other.sv
//          ^ keyword.operator.assignment.sv
//            ^^^^^ variable.other.sv
//                  ^ keyword.operator.assignment.sv
//                    ^^^^^ variable.other.sv
//                          ^ keyword.operator.assignment.sv
//                            ^^^^^^ variable.other.sv
//                                  ^ punctuation.terminator.semicolon.sv

  // Part select on the left-hand side
  alias w[7:0] = lsb;
//^^^^^ keyword.control.alias.sv
//      ^ variable.other.sv
//       ^ punctuation.section.brackets.begin.sv
//        ^ constant.numeric.integer.sv
//         ^ punctuation.separator.colon.sv
//          ^ constant.numeric.integer.sv
//           ^ punctuation.section.brackets.end.sv
//             ^ keyword.operator.assignment.sv
//               ^^^ variable.other.sv
//                  ^ punctuation.terminator.semicolon.sv

  alias w[31:24] = msb;
//^^^^^ keyword.control.alias.sv
//      ^ variable.other.sv
//       ^ punctuation.section.brackets.begin.sv
//               ^ keyword.operator.assignment.sv
//                 ^^^ variable.other.sv

  // Concatenation as a net_lvalue: byte order swapping
  alias {w[7:0], w[15:8]} = bus_a;
//^^^^^ keyword.control.alias.sv
//      ^ punctuation.section.braces.begin.sv
//       ^ variable.other.sv
//             ^ punctuation.separator.comma.sv
//               ^ variable.other.sv
//                      ^ punctuation.section.braces.end.sv
//                        ^ keyword.operator.assignment.sv
//                          ^^^^^ variable.other.sv
//                               ^ punctuation.terminator.semicolon.sv

endmodule
