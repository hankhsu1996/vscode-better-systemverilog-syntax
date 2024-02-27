// SYNTAX TEST "source-text.sv"

interface itf;
  logic c,q,d;
  modport flop (input c,d, output q);
endinterface

module dtype (itf.flop ch);
//            ^^^ entity.name.type.sv
//                ^^^^ entity.name.type.sv
//                     ^^ variable.other.sv
  always_ff @(posedge ch.c) ch.q <= ch.d;
  specify
    ( posedge ch.c => (ch.q+:ch.d)) = (5,6);
    $setup( ch.d, posedge ch.c, 1 );
//          ^^ variable.other.sv
//             ^ variable.other.sv
  endspecify
endmodule
