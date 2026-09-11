// SYNTAX TEST "source-text.sv"

/*
:name: defparam
:description: defparam statement test
:tags: 23.10.1
*/

module top;

  defparam u1.width = 8;
//^^^^^^^^ keyword.control.defparam.sv
//         ^^ variable.other.sv
//           ^ punctuation.accessor.dot.sv
//            ^^^^^ variable.other.sv
//                  ^ keyword.operator.assignment.sv
//                    ^ constant.numeric.integer.sv
//                     ^ punctuation.terminator.semicolon.sv

  // An all-caps name is treated as a constant by the identifier heuristic
  defparam u2.WIDTH = 16;
//^^^^^^^^ keyword.control.defparam.sv
//            ^^^^^ variable.other.constant.sv
//                  ^ keyword.operator.assignment.sv
//                    ^^ constant.numeric.integer.sv

  // Several assignments in one statement
  defparam u3.a = 1, u3.b = 2;
//^^^^^^^^ keyword.control.defparam.sv
//            ^ variable.other.sv
//              ^ keyword.operator.assignment.sv
//                ^ constant.numeric.integer.sv
//                 ^ punctuation.separator.comma.sv
//                      ^ variable.other.sv
//                        ^ keyword.operator.assignment.sv
//                          ^ constant.numeric.integer.sv
//                           ^ punctuation.terminator.semicolon.sv

endmodule
