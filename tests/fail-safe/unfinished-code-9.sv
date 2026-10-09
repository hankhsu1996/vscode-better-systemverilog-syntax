// SYNTAX TEST "source-text.sv"

// Fail safe test: test unfinished config code

config c;
  design
//^^^^^^ keyword.other.design.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.
//^^^^^^ keyword.other.design.sv
//       ^^^ entity.name.type.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  default
//^^^^^^^ keyword.other.default.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  default liblist
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^ keyword.other.liblist.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  default liblist lib1
//        ^^^^^^^ keyword.other.liblist.sv
//                ^^^^ entity.name.type.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance
//^^^^^^^^ keyword.other.instance.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.
//^^^^^^^^ keyword.other.instance.sv
//         ^^^ variable.other.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.a1
//^^^^^^^^ keyword.other.instance.sv
//             ^^ variable.other.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.a1 liblist
//                ^^^^^^^ keyword.other.liblist.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.a1 use
//                ^^^ keyword.other.use.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.a1 use lib.
//                ^^^ keyword.other.use.sv
//                    ^^^ entity.name.type.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  instance top.a1 use #(
//                ^^^ keyword.other.use.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  cell
//^^^^ keyword.other.cell.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  cell m
//^^^^ keyword.other.cell.sv
//     ^ entity.name.type.sv
endconfig
//^^^^^^^ storage.type.config.sv


config c;
  design lib.top;
  cell m use
//       ^^^ keyword.other.use.sv
endconfig
//^^^^^^^ storage.type.config.sv


// An unfinished rule does not take the rules after it with it.
config c;
  design lib.top
  instance top.a1
  default liblist lib1
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^ keyword.other.liblist.sv
  cell m use
  instance top.a2 use lib.x;
//^^^^^^^^ keyword.other.instance.sv
//         ^^^ variable.other.sv
//                ^^^ keyword.other.use.sv
endconfig
//^^^^^^^ storage.type.config.sv
