// SYNTAX TEST "source-text.sv"

config cfg1;
  design rtlLib.top ;
  default liblist aLib rtlLib;
endconfig

config cfg2;
  design rtlLib.top ;
  default liblist gateLib aLib rtlLib;
endconfig

config cfg3;
  design rtlLib.top ;
  default liblist aLib rtlLib;
  cell m use gateLib.m ;
//^^^^ keyword.other.cell.sv
//     ^ entity.name.type.sv
//       ^^^ keyword.other.use.sv
//           ^^^^^^^ entity.name.type.sv
//                  ^ punctuation.accessor.dot.sv
//                   ^ entity.name.type.sv
//                     ^ punctuation.terminator.semicolon.sv
endconfig

config cfg4;
  design rtlLib.top ;
  default liblist gateLib rtlLib;
  instance top.a2 liblist aLib;
endconfig

config cfg5;
  design aLib.adder;
  default liblist gateLib aLib;
  instance adder.f1 liblist rtlLib;
endconfig

config cfg6;
  design rtlLib.top;
  default liblist aLib rtlLib;
  instance top.a2 use work.cfg5:config ;
//                ^^^ keyword.other.use.sv
//                    ^^^^ entity.name.type.sv
//                        ^ punctuation.accessor.dot.sv
//                         ^^^^ entity.name.type.sv
//                             ^ punctuation.separator.colon.sv
//                              ^^^^^^ keyword.other.config.sv
//                                     ^ punctuation.terminator.semicolon.sv
endconfig
