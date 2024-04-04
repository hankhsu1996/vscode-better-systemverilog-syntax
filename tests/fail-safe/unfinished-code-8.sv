// SYNTAX TEST "source-text.sv"

// Fail safe test: test unfinished coverage code

module Test;
  covergroup
//^^^^^^^^^^ storage.type.covergroup.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint
//  ^^^^^^^^^^ storage.type.coverpoint.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff ()
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff () {
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
      bins
//    ^^^^ storage.type.bins.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff () {
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
      bins my_bin
//    ^^^^ storage.type.bins.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff () {
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
      bins my_bin =
//    ^^^^ storage.type.bins.sv
//         ^^^^^^ variable.other.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    coverpoint expr iff () {
//  ^^^^^^^^^^ storage.type.coverpoint.sv
//             ^^^^ variable.other.sv
//                  ^^^ keyword.control.iff.sv
      bins my_bin = {}
//    ^^^^ storage.type.bins.sv
//         ^^^^^^ variable.other.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross
//  ^^^^^ storage.type.cross.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1, cg2 iff
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
//                 ^^^ keyword.control.iff.sv
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1, cg2 iff () {
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
//                 ^^^ keyword.control.iff.sv
      bins
//    ^^^^ storage.type.bins.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1, cg2 iff () {
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
//                 ^^^ keyword.control.iff.sv
      bins my_bin = binsof
//    ^^^^ storage.type.bins.sv
//                  ^^^^^^ keyword.other.binsof.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1, cg2 iff () {
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
//                 ^^^ keyword.control.iff.sv
      bins my_bin = binsof() intersect
//    ^^^^ storage.type.bins.sv
//                  ^^^^^^ keyword.other.binsof.sv
//                           ^^^^^^^^^ keyword.other.intersect.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv


module Test;
  covergroup cg;
//^^^^^^^^^^ storage.type.covergroup.sv
//           ^^ entity.name.type.sv
    cross cg1, cg2 iff () {
//  ^^^^^ storage.type.cross.sv
//        ^^^ variable.other.sv
//                 ^^^ keyword.control.iff.sv
      bins my_bin = cg with
//    ^^^^ storage.type.bins.sv
//                  ^^ variable.other.sv
//                     ^^^^ keyword.other.with.sv
    }
endmodule
//^^^^^^^ storage.type.module.sv
