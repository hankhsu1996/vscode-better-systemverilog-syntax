// SYNTAX TEST "source-text.sv"

// The first example of LRM 17.5
checker check(logic a, b, c, clk, rst);
  logic x, y, z, v, t;

  assign x = a;                             // current value of a

  always_ff @(posedge clk or negedge rst) // current values of clk and rst
//^^^^^^^^^ meta.checker-body.sv keyword.control.always_ff.sv
//          ^ meta.event-control.sv punctuation.definition.event.sv
  begin
//^^^^^ keyword.control.begin.sv
    a1: assert (b);                        // sampled value of b
    if (rst)                               // current value of rst
      z <= b;                             // sampled value of b
//    ^ variable.other.sv
    else z <= !c;                          // sampled value of c
  end
//^^^ keyword.control.end.sv

  always_comb begin
//^^^^^^^^^^^ keyword.control.always_comb.sv
//            ^^^^^ keyword.control.begin.sv
    a2: assert (b);                        // current value of b
    if (a)                                 // current value of a
      v = b;                              // current value of b
//    ^ variable.other.sv
    else v = !b;                           // current value of b
  end

  always_latch begin
//^^^^^^^^^^^^ keyword.control.always_latch.sv
    a3: assert (b);                          // current value of b
    if (clk)                                 // current value of clk
      t <= b;                               // current value of b
//    ^ variable.other.sv
  end
endchecker : check
//<---------- storage.type.checker.sv
//           ^^^^^ entity.name.type.sv
