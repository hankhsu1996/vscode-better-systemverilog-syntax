// SYNTAX TEST "source-text.sv"

// 23.11 Binding auxiliary code to scopes or instances

module Test;
  bind cpu fpu_props fpu_rules_1(a,b,c);
//^^^^ 	keyword.control.bind.sv
//     ^^^ variable.other.sv
//         ^^^^^^^^^ entity.name.type.sv
//                   ^^^^^^^^^^^ variable.other.sv
//                               ^ variable.other.sv
//                                 ^ variable.other.sv
//                                   ^ variable.other.sv

  bind cpu: cpu1 fpu_props fpu_rules_1(a, b, c);
//^^^^ 	keyword.control.bind.sv
//     ^^^ entity.name.type.sv
//          ^^^^ variable.other.sv
//               ^^^^^^^^^ entity.name.type.sv
//                         ^^^^^^^^^^^ variable.other.sv
//                                     ^ variable.other.sv
//                                        ^ variable.other.sv
//                                           ^ variable.other.sv

  bind cpu: cpu1, cpu2, cpu3 fpu_props fpu_rules_1(a, b, c);
//^^^^ 	keyword.control.bind.sv
//     ^^^ entity.name.type.sv
//          ^^^^ variable.other.sv
//                ^^^^ variable.other.sv
//                      ^^^^ variable.other.sv
//                           ^^^^^^^^^ entity.name.type.sv
//                                     ^^^^^^^^^^^ variable.other.sv
//                                                 ^ variable.other.sv
//                                                    ^ variable.other.sv
//                                                       ^ variable.other.sv

  bind cr_unit range r1(c_clk,c_en,v_low,(in1&&in2));
//^^^^ 	keyword.control.bind.sv
//     ^^^^^^^ variable.other.sv
//             ^^^^^ entity.name.type.sv
//                   ^^ variable.other.sv
//                      ^^^^^ variable.other.sv
//                            ^^^^ variable.other.sv
//                                 ^^^^ variable.other.sv
//                                        ^^^ variable.other.sv
//                                             ^^^ variable.other.sv

  bind targetmod
//^^^^ 	keyword.control.bind.sv
//     ^^^^^^^^^ variable.other.sv
  mycheck #(.param1(const4), .param2(8'h44))
//^^^^^^^ entity.name.type.sv
//           ^^^^^^ variable.parameter.sv
//                  ^^^^^^ variable.other.sv
//                            ^^^^^^ variable.parameter.sv
//                                   ^^^^^ constant.numeric.hex.sv
  i_mycheck(.*, .p1(f1({v1, 1'b0, b1.c}, v2 & v3)), .p2(top.v4));
//^^^^^^^^^ variable.other.sv
//          ^^ 	punctuation.definition.wildcard.sv
//               ^^ variable.parameter.sv
//                  ^^ entity.name.function.sv
//                      ^^ variable.other.sv
//                          ^^^^ constant.numeric.binary.sv
//                                ^^ variable.other.sv
//                                   ^ variable.other.sv
//                                       ^^ variable.other.sv
//                                            ^^ variable.other.sv
//                                                   ^^ variable.parameter.sv
//                                                      ^^^ variable.other.sv
//                                                          ^^ variable.other.sv
endmodule
