// SYNTAX TEST "source-text.sv"

module Test;
  myinterface #(100) scalar1(), vector[9:0]();
//^^^^^^^^^^^ entity.name.type.sv
//            ^ punctuation.definition.parameter-assignment-or-delay.sv
//              ^^^ constant.numeric.integer.sv
//                   ^^^^^^^ variable.other.sv
//                              ^^^^^^ variable.other.sv
//                                    ^^^^^ meta.dimension.sv

  myinterface #() scalar1(   ), vector[9:0]();

  initial
    d = op(.x(a), .y(b), .z(c));
endmodule
