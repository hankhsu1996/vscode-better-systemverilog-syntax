// SYNTAX TEST "source-text.sv"

// Fail safe test: In some cases, because of the macro usage, there might be unpaired begin/end pairs. In this case, it should resume coloring in the next design element.


module Test;

  `ifdef FOO
  module1 m1(
  `else
  module2 m2(
  `endif
    .a(a),
    .b(b)
  );

endmodule
//<--------- storage.type.module.sv
