// SYNTAX TEST "source-text.sv"

// 16.12.2
property p3;
  b ##1 c;
//^ variable.other.sv
//      ^ variable.other.sv
endproperty
c1: cover property (@(posedge clk) a #-# p3);
//                                 ^ variable.other.sv
//                                       ^^ variable.other.sv
a1: assert property (@(posedge clk) a |-> p3);
//                                  ^ variable.other.sv
//                                        ^^ variable.other.sv

// 16.12.7
let ready_exp = (irdy == 0) && ($fell(trdy) || $fell(stop));
//  ^^^^^^^^^ entity.name.function.sv
//               ^^^^ variable.other.sv
//                                    ^^^^ variable.other.sv
//                                                   ^^^^ variable.other.sv
property data_end;
//       ^^^^^^^^ entity.name.type.sv
  @(posedge mclk)
//          ^^^^ variable.other.sv
  $rose(data_phase) |-> ##[1:5] ready_exp;
//      ^^^^^^^^^^ variable.other.sv
//                              ^^^^^^^^^ variable.other.sv
endproperty
a1: assert property(data_end);
//                  ^^^^^^^^ variable.other.sv



let data_end_exp = data_phase && ready_exp;
//  ^^^^^^^^^^^^ entity.name.function.sv
property data_end_rule1;
//       ^^^^^^^^^^^^^^ entity.name.type.sv
  @(posedge mclk)
  data_end_exp |-> ##[1:2] $rose(frame) ##1 $rose(irdy);
//^^^^^^^^^^^^ variable.other.sv
//                               ^^^^^ variable.other.sv
//                                                ^^^^ variable.other.sv
endproperty
a2: assert property(data_end_rule1);
//                  ^^^^^^^^^^^^^^ variable.other.sv


property write_to_addr;
//       ^^^^^^^^^^^^^ entity.name.type.sv
  (write_en & data_valid) ##0
// ^^^^^^^^ variable.other.sv
//            ^^^^^^^^^^ variable.other.sv
  (write_en && (retire_address[0:4]==addr)) [*2] |->
// ^^^^^^^^ variable.other.sv
//              ^^^^^^^^^^^^^^ variable.other.sv
//                                   ^^^^ variable.other.sv
  ##[3:8] write_en && !data_valid &&(write_address[0:4]==addr);
//        ^^^^^^^^ variable.other.sv
//                     ^^^^^^^^^^ variable.other.sv
//                                   ^^^^^^^^^^^^^ variable.other.sv
//                                                       ^^^^ variable.other.sv
endproperty


property write_to_addr_nested;
  (write_en & data_valid) |->
  (write_en && (retire_address[0:4]==addr)) [*2] |->
  ##[3:8] write_en && !data_valid && (write_address[0:4]==addr);
endproperty


// 16.12.9
property p1;
  ##[0:5] done #-# always !rst;
//        ^^^^ variable.other.sv
//                 ^^^^^^ keyword.other.always.sv
//                         ^^^ variable.other.sv
endproperty
property p2;
  ##[0:5] done #=# always !rst;
//        ^^^^ variable.other.sv
//                 ^^^^^^ keyword.other.always.sv
//                         ^^^ variable.other.sv
endproperty


// 16.12.10
property p1;
  nexttime a;
//^^^^^^^^ keyword.other.nexttime.sv
endproperty

property p2;
  s_nexttime a;
//^^^^^^^^^^ keyword.other.s_nexttime.sv
endproperty

property p3;
  nexttime always a;
//^^^^^^^^ keyword.other.nexttime.sv
//         ^^^^^^ keyword.other.always.sv
endproperty

property p4;
  s_nexttime always a;
//^^^^^^^^^^ keyword.other.s_nexttime.sv
//           ^^^^^^ keyword.other.always.sv
endproperty

property p5;
  nexttime s_eventually a;
//^^^^^^^^ keyword.other.nexttime.sv
//         ^^^^^^^^^^^^ keyword.other.s_eventually.sv
endproperty

property p6;
  s_nexttime s_eventually a;
//^^^^^^^^^^ keyword.other.s_nexttime.sv
//           ^^^^^^^^^^^^ keyword.other.s_eventually.sv
endproperty

property p7;
  nexttime[2] a;
//^^^^^^^^ keyword.other.nexttime.sv
//         ^ constant.numeric.integer.sv
endproperty

property p8;
  s_nexttime[2] a;
//^^^^^^^^^^ keyword.other.s_nexttime.sv
//           ^ constant.numeric.integer.sv
endproperty


// 16.12.11
initial a1: assume property( @(posedge clk) reset[*5] #=# always !reset);
property p1;
  a ##1 b |=> always c;
//^ variable.other.sv
//      ^ variable.other.sv
//            ^^^^^^ keyword.other.always.sv
endproperty

property p2;
  always [2:5] a;
//^^^^^^ keyword.other.always.sv
endproperty

property p3;
  s_always [2:5] a;
//^^^^^^^^ keyword.other.s_always.sv
endproperty

property p4;
  always [2:$] a;
//^^^^^^ keyword.other.always.sv
//          ^ constant.numeric.dollar.sv
endproperty

property p5;
  s_always [2:$] a; // Illegal
//^^^^^^^^ keyword.other.s_always.sv
endproperty


// 16.12.12
property p1;
  a until b;
//^ variable.other.sv
//  ^^^^^ keyword.other.until.sv
//        ^ variable.other.sv
endproperty

property p2;
  a s_until b;
//^ variable.other.sv
//  ^^^^^^^ keyword.other.s_until.sv
//          ^ variable.other.sv
endproperty

property p3;
  a until_with b;
//^ variable.other.sv
//  ^^^^^^^^^^ keyword.other.until_with.sv
//             ^ variable.other.sv
endproperty

property p4;
  a s_until_with b;
//^ variable.other.sv
//  ^^^^^^^^^^^^ keyword.other.s_until_with.sv
//               ^ variable.other.sv
endproperty


// 16.12.13
property p1;
  s_eventually a;
//^^^^^^^^^^^^ keyword.other.s_eventually.sv
endproperty

property p2;
  s_eventually always a;
//^^^^^^^^^^^^ keyword.other.s_eventually.sv
//             ^^^^^^ keyword.other.always.sv
endproperty

property p3;
  always s_eventually a;
//^^^^^^ keyword.other.always.sv
//       ^^^^^^^^^^^^ keyword.other.s_eventually.sv
endproperty

property p4;
  eventually [2:5] a;
//^^^^^^^^^^ keyword.other.eventually.sv
endproperty

property p5;
  s_eventually [2:5] a;
//^^^^^^^^^^^^ keyword.other.s_eventually.sv
endproperty

property p6;
  eventually [2:$] a; // Illegal
//^^^^^^^^^^ keyword.other.eventually.sv
endproperty

property p7;
  s_eventually [2:$] a;
//^^^^^^^^^^^^ keyword.other.s_eventually.sv
//                ^ constant.numeric.dollar.sv
endproperty

// 16.12.14
assert property (@(clk) go ##1 get[*2] |-> reject_on(stop) put[->2]);
//                      ^^ variable.other.sv
//                             ^^^ variable.other.sv
//                                         ^^^^^^^^^ keyword.control.reject_on.sv
//                                                   ^^^^ variable.other.sv
//                                                         ^^^ variable.other.sv
assert property (@(clk) go ##1 get[*2] |-> sync_reject_on(stop) put[->2]);
//                      ^^ variable.other.sv
//                             ^^^ variable.other.sv
//                                         ^^^^^^^^^^^^^^ keyword.control.sync_reject_on.sv
//                                                        ^^^^ variable.other.sv
//                                                              ^^^ variable.other.sv

assert property (@(clk) go ##1 get[*2] |-> !stop throughout put[->2]);
//                      ^^ variable.other.sv
//                             ^^^ variable.other.sv
//                                          ^^^^ variable.other.sv
//                                               ^^^^^^^^^^ keyword.other.throughout.sv
//                                                          ^^^ variable.other.sv

property p; (accept_on(a) p1) and (reject_on(b) p2); endproperty
//           ^^^^^^^^^ keyword.control.accept_on.sv
//                     ^ variable.other.sv
//                        ^^ variable.other.sv
//                            ^^^ keyword.other.and.sv
//                                 ^^^^^^^^^ keyword.control.reject_on.sv
//                                           ^ variable.other.sv
//                                              ^^ variable.other.sv

property p; (accept_on(a) p1) or (reject_on(b) p2); endproperty
//           ^^^^^^^^^ keyword.control.accept_on.sv
//                     ^ variable.other.sv
//                        ^^ variable.other.sv
//                            ^^ keyword.other.or.sv
//                                ^^^^^^^^^ keyword.control.reject_on.sv
//                                          ^ variable.other.sv
//                                             ^^ variable.other.sv

property p; not (accept_on(a) p1); endproperty
//          ^^^ keyword.other.not.sv
//               ^^^^^^^^^ keyword.control.accept_on.sv
//                         ^ variable.other.sv
//                            ^^ variable.other.sv

property p; accept_on(a) reject_on(b) p1; endproperty
//          ^^^^^^^^^ keyword.control.accept_on.sv
//                    ^ variable.other.sv
//                       ^^^^^^^^^ keyword.control.reject_on.sv
//                                 ^ variable.other.sv


// 16.12.16
property p_delay(logic [1:0] delay);
  case (delay)
//^^^^ keyword.control.case.sv
    2'd0 : a && b;
//         ^ variable.other.sv
//              ^ variable.other.sv
    2'd1 : a ##2 b;
//         ^ variable.other.sv
//               ^ variable.other.sv
    2'd2 : a ##4 b;
//         ^ variable.other.sv
//               ^ variable.other.sv
    2'd3 : a ##8 b;
//         ^ variable.other.sv
//               ^ variable.other.sv
    default: 0; // cause a failure if delay has x or z values
  endcase
endproperty

// 16.12.20
property rule1;
  @(posedge clk) a |-> b ##1 c ##1 d;
//               ^ variable.other.sv
//                     ^ variable.other.sv
//                           ^ variable.other.sv
//                                 ^ variable.other.sv
endproperty

property rule2;
  @(clkev) disable iff (e) a |-> not(b ##1 c ##1 d);
//         ^^^^^^^ keyword.control.disable.sv
//                 ^^^ keyword.control.iff.sv
//                      ^ variable.other.sv
//                         ^ variable.other.sv
//                               ^^^ keyword.other.not.sv
//                                   ^ variable.other.sv
//                                         ^ variable.other.sv
//                                               ^ variable.other.sv
endproperty

property rule3;
  @(posedge clk) a[*2] |-> ((##[1:3] c) or (d |=> e));
//               ^ variable.other.sv
//                                   ^ variable.other.sv
//                                      ^^ keyword.other.or.sv
//                                          ^ variable.other.sv
//                                                ^ variable.other.sv
endproperty

property rule4;
  @(posedge clk) a[*2] |-> ((##[1:3] c) and (d |=> e));
//               ^ variable.other.sv
//                                   ^ variable.other.sv
//                                      ^^^ keyword.other.and.sv
//                                           ^ variable.other.sv
//                                                 ^ variable.other.sv
endproperty

property rule5;
  @(posedge clk)
  a ##1 (b || c)[->1] |->
//^ variable.other.sv
//       ^ variable.other.sv
//            ^ variable.other.sv
    if (b)
//  ^^ keyword.control.if.sv
//      ^ variable.other.sv
      (##1 d |-> e)
//         ^ variable.other.sv
//               ^ variable.other.sv
    else // c
//  ^^^^ keyword.control.else.sv
      f ;
//    ^ variable.other.sv
endproperty

property rule6(x,y);
  ##1 x |-> y;
//    ^ variable.other.sv
//          ^ variable.other.sv
endproperty

property rule5a;
  @(posedge clk)
  a ##1 (b || c)[->1] |->
    if (b)
      rule6(d,e)
    else // c
      f ;
endproperty


// 16.13.4 Examples
sequence mult_s;
  @(posedge clk) a ##1 @(posedge clk1) s1 ##1 @(posedge clk2) s2;
endsequence

property mult_p1;
  @(posedge clk) a ##1 @(posedge clk1) s1 ##1 @(posedge clk2) s2;
endproperty

property mult_p2;
  mult_s;
endproperty

property mult_p3;
  @(posedge clk) a ##1 @(posedge clk1) s1 |=> @(posedge clk2) s2;
endproperty

property mult_p6;
  mult_s |=> mult_s;
endproperty

property mult_p7;
  @(posedge clk) a ##1 b |-> c ##1 @(posedge clk1) d;
endproperty

property mult_p8;
  @(posedge clk) a ##1 b |->
  if (c)
    (1 |=> @(posedge clk1) d)
  else
    e ##1 @(posedge clk2) f ;
endproperty

// 16.13.5
sequence e1(a,b,c);
//       ^^ entity.name.type.sv
//          ^ variable.other.sv
//            ^ variable.other.sv
//              ^ variable.other.sv
  @(posedge clk) $rose(a) ##1 b ##1 c ;
//               ^^^^^ entity.name.function.sv
//                     ^ variable.other.sv
//                            ^ variable.other.sv
//                                  ^ variable.other.sv
endsequence

sequence e2;
  @(posedge sysclk) reset ##1 inst ##1 e1(ready,proc1,proc2).matched [->1]
//                  ^^^^^ variable.other.sv
//                            ^^^^ variable.other.sv
  ##1 branch_back;
//    ^^^^^^^^^^^ variable.other.sv
endsequence
