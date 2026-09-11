// SYNTAX TEST "source-text.sv"

/*
:name: assignment_patterns
:description: assignment pattern test
:tags: 10.9
*/

module top;

  typedef struct { real r, th; } c_t;

  // default key
  int a [4] = '{default: 1};
//^^^ entity.name.type.sv
//    ^ variable.other.sv
//            ^^ meta.pattern.sv punctuation.section.braces.begin.sv
//              ^^^^^^^ keyword.other.default.sv
//                     ^ punctuation.separator.colon.sv
//                       ^ constant.numeric.integer.sv
//                        ^ punctuation.section.braces.end.sv

  // structure pattern keys
  c_t x = '{th: 1.0, r: 2.0};
//^^^ entity.name.type.sv
//        ^^ meta.pattern.sv punctuation.section.braces.begin.sv
//          ^^ variable.other.sv
//            ^ punctuation.separator.colon.sv
//              ^^^ constant.numeric.real.sv
//                 ^ punctuation.separator.comma.sv

  // positional notation
  int b [4] = '{1, 2, 3, 4};
//            ^^ meta.pattern.sv punctuation.section.braces.begin.sv
//              ^ constant.numeric.integer.sv
//               ^ punctuation.separator.comma.sv
//                        ^ punctuation.section.braces.end.sv

  // replication
  int c [9] = '{9{1}};
//            ^^ meta.pattern.sv punctuation.section.braces.begin.sv
//              ^ constant.numeric.integer.sv
//               ^ meta.concatenation.sv punctuation.section.braces.begin.sv
//                ^ constant.numeric.integer.sv
//                 ^ punctuation.section.braces.end.sv

  // a type may be used as the key
  int d [2] = '{int: 0};
//            ^^ meta.pattern.sv punctuation.section.braces.begin.sv
//              ^^^ entity.name.type.sv
//                 ^ punctuation.separator.colon.sv
//                   ^ constant.numeric.integer.sv

endmodule
