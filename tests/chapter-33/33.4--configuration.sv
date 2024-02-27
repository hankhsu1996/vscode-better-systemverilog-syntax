// SYNTAX TEST "source-text.sv"

config bot;
//^^^^ storage.type.config.sv
//     ^^^ entity.name.type.sv
  design lib1.bot;
//^^^^^^ keyword.other.design.sv
//       ^^^^ entity.name.type.sv
//           ^ punctuation.accessor.dot.sv
//            ^^^ entity.name.type.sv
  default liblist lib1 lib2;
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^ keyword.other.liblist.sv
//                ^^^^ entity.name.type.sv
//                     ^^^^ entity.name.type.sv
  instance bot.a1 liblist lib3;
//^^^^^^^^ keyword.other.instance.sv
//         ^^^ variable.other.sv
//            ^ punctuation.accessor.dot.sv
//             ^^ variable.other.sv
//                ^^^^^^^ keyword.other.liblist.sv
//                        ^^^^ entity.name.type.sv
endconfig : bot
//^^^^ storage.type.config.sv
//        ^ punctuation.separator.colon.sv
//          ^^^ entity.name.type.sv

config top;
  design lib1.top;
  default liblist lib2 lib1;
  instance top.bot use lib1.bot:config;
//                 ^^^ keyword.other.use.sv
//                     ^^^^ entity.name.type.sv
//                         ^ punctuation.accessor.dot.sv
//                          ^^^ variable.other.sv
//                             ^ punctuation.separator.colon.sv
//                              ^^^^^^ keyword.other.config.sv
  instance top.bot.a1 liblist lib4;
endconfig

config cfgl;
  design rtlLib.top;
  instance top use #(.WIDTH(32));
//             ^^^ keyword.other.use.sv
//                 ^ punctuation.definition.parameter-assignment-or-delay.sv
//                  ^ punctuation.section.group.begin.sv
//                   ^^^^^^^^^^ meta.named-parameter-assignment.sv
//                             ^ punctuation.section.group.end.sv
  instance top.a1 use #(.W(top.WIDTH));
endconfig

config cfg2;
  localparam S = 24;
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^ variable.other.constant.sv
  design rtlLib.top4;
  instance top4.a1 use #(.W(top4.S));
  instance top4.a2 use #(.W(S));
endconfig

config cfg3;
  design rtlLib.top5;
  instance top5.a1 use #(.W()); // set only parameter W back to its default
endconfig

config cfg4;
  design rtlLib.top;
  instance top.a1 use #();  // set all parameters in instance a1
                            // back to their defaults
endconfig

config cfg6;
  design rtlLib.test;
  instance test.t use #(.WIDTH(48));
endconfig
