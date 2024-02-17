// SYNTAX TEST "source-text.sv"

// 26.6
package p1;
  int x, y;
endpackage
package p2;
  import p1::x;
//^^^^^^ keyword.control.import.sv
//       ^^ entity.name.namespace.sv
//           ^ entity.name.function.sv

  export p1::*;  // exports p1::x as the name "x";
//^^^^^^ keyword.control.export.sv
//       ^^ entity.name.namespace.sv

  // p1::x and p2::x are the same declaration
endpackage
package p3;
  import p1::*;
  import p2::*;
  export p2::*;
  int q = x;
  // p1::x and q are made available from p3. Although p1::y
  // is a candidate for import, it is not actually imported
  // since it is not referenced. Since p1::y is not imported,
  // it is not made available by the export.
endpackage
package p4;
  import p1::*;
  export p1::*;
  int y = x;  // y is available as a direct declaration;
  // p1::x is made available by the export
endpackage
package p5;
  import p4::*;
  import p1::*;
  export p1::x; export p4::x;  // p4::x refers to the same declaration
//       ^^ entity.name.namespace.sv
//           ^ entity.name.function.sv
//              ^^^^^^ keyword.control.export.sv
//                     ^^ entity.name.namespace.sv
//                         ^ entity.name.function.sv
  // as p1::x so this is legal.
endpackage
package p6;
  import p1::*;
  export p1::x;
  int x;  // Error. export p1::x is considered to
  // be a reference to "x" so a subsequent
  // declaration of x is illegal.
endpackage
package p7;
  int y;
endpackage
package p8;
  export * ::*;  // Exports both p7::y and p1::x.
  import p7::y;
  import p1::x;
endpackage
module top;
  import p2::*;
  import p4::*;
  int y = x;  // x is p1::x
endmodule
