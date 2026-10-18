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

// An extern declaration of a module, interface or program is a header with no
// body (LRM 23.5, A.1.2), at the top level or nested in a module or interface
extern macromodule mm #(parameter W = 4) (input logic [W-1:0] a, output logic y);
//<------ storage.modifier.extern.sv
//     ^^^^^^^^^^^ storage.type.macromodule.sv
//                 ^^ entity.name.type.sv
//                                        ^^^^^ storage.modifier.input.sv
extern interface automatic bus_if (input logic clk);
//     ^^^^^^^^^ storage.type.interface.sv
//               ^^^^^^^^^ storage.modifier.automatic.sv
//                         ^^^^^^ entity.name.type.sv
extern program prog (input logic clk);
//     ^^^^^^^ storage.type.program.sv
//             ^^^^ entity.name.type.sv
extern module pkg_user import pkg::*; (input logic a);
//            ^^^^^^^^ entity.name.type.sv
//                     ^^^^^^ keyword.control.import.sv
module after_externs;
//<------ storage.type.module.sv
//     ^^^^^^^^^^^^^ entity.name.type.sv
  extern module child (input a, output b);
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^ storage.type.module.sv
//              ^^^^^ entity.name.type.sv
  logic x;
//      ^ meta.module-body.sv variable.other.sv
endmodule
//<--------- storage.type.module.sv

interface outer_if;
  extern module child (input a);
//       ^^^^^^ storage.type.module.sv
//              ^^^^^ entity.name.type.sv
  extern forkjoin task count();
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^^^ storage.modifier.forkjoin.sv
endinterface
//<------------ storage.type.interface.sv
