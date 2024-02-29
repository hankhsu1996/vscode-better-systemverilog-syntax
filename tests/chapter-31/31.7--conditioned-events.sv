// SYNTAX TEST "source-text.sv"

specify
  $setup( data, posedge clk, 10 );
  $setup( data, posedge clk &&& clr, 10 ) ;
  $setup( data, posedge clk &&& (~clr), 10 ) ;
//                               ^ keyword.operator.unary.sv
  $setup( data, posedge clk &&& (clr===0), 10 );
//                                  ^^^ keyword.operator.binary.sv
  $setup( data, posedge clk &&& clr_and_set, 10 );
endspecify
