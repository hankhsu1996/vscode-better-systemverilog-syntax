// SYNTAX TEST "source-text.sv"

// Fail safe test: test miscellaneous unfinished begin/ebd pairs.


module Test;
  typedef struct packed {
    logic [7:0] a;
    logic [7:0] b;
endmodule
//<--------- storage.type.module.sv


module Test;
  localparam type my_type = union packed {
    t_my_type1            var1;
//  ^^^^^^^^^ entity.name.type.sv
    MyType2 [WR_SEGS-1:0] var2;
//  ^^^^^^^ entity.name.type.sv
endmodule
//<--------- storage.type.module.sv
