// SYNTAX TEST "source-text.sv"

config c1;
  design work.tb gates.dut;
//       ^^^^ entity.name.type.sv
//            ^^ entity.name.type.sv
//               ^^^^^ entity.name.type.sv
//                     ^^^ entity.name.type.sv
  cell rtl.fifo use gates.fifo;
//     ^^^ entity.name.type.sv
//         ^^^^ entity.name.type.sv
//              ^^^ keyword.other.use.sv
//                  ^^^^^ entity.name.type.sv
//                        ^^^^ entity.name.type.sv
  cell mem liblist memlib rtl;
//     ^^^ entity.name.type.sv
//         ^^^^^^^ keyword.other.liblist.sv
//                 ^^^^^^ entity.name.type.sv
//                        ^^^ entity.name.type.sv
  instance tb.u0.u1 use gates.core #(.W(8), .D(4));
//                  ^^^ keyword.other.use.sv
//                      ^^^^^ entity.name.type.sv
//                            ^^^^ entity.name.type.sv
//                                 ^ punctuation.definition.parameter-assignment-or-delay.sv
//                                    ^ variable.parameter.sv
//                                                ^ punctuation.terminator.semicolon.sv
  instance tb.u2 use sub:config;
//                   ^^^ entity.name.type.sv
//                       ^^^^^^ keyword.other.config.sv
endconfig

module after_config;
//^^^^ storage.type.module.sv
endmodule
