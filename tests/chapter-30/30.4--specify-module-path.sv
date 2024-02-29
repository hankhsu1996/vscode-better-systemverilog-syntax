// SYNTAX TEST "source-text.sv"


// 30.4.2 Simple module paths
specify
  (A => Q) = 10;
//^ punctuation.section.group.begin.sv
// ^ variable.other.sv
//   ^^ keyword.operator.parallel-path.sv
//      ^ variable.other.sv
//       ^ punctuation.section.group.end.sv
//         ^ keyword.operator.assignment.sv
//           ^^ constant.numeric.integer.sv
  (B => Q) = (12);
  (C, D *> Q) = 18;
//  ^ punctuation.separator.comma.sv
//      ^^ keyword.operator.full-path.sv
endspecify


// 30.4.3 Edge-sensitive paths
specify
  ( posedge clock => ( out +: in ) ) = (10, 8);
//  ^^^^^^^ keyword.other.posedge.sv
//          ^^^^^ variable.other.sv
//                ^^ keyword.operator.parallel-path.sv
//                   ^ punctuation.section.group.begin.sv
//                     ^^^ variable.other.sv
//                         ^ keyword.operator.polarity.sv
//                          ^ punctuation.separator.colon.sv
//                            ^^ variable.other.sv
//                               ^ punctuation.section.group.end.sv
//                                 ^ punctuation.section.group.end.sv
//                                   ^ keyword.operator.assignment.sv
//                                     ^ punctuation.section.group.begin.sv
//                                      ^^ constant.numeric.integer.sv
//                                        ^ punctuation.separator.comma.sv
//                                          ^ constant.numeric.integer.sv
//                                           ^ punctuation.section.group.end.sv
  ( negedge clock[0] => ( out -: in ) ) = (10, 8);
//               ^ punctuation.section.brackets.begin.sv
//                ^ constant.numeric.integer.sv
//                 ^ punctuation.section.brackets.end.sv
//                            ^ keyword.operator.polarity.sv
  ( clock => ( out : in ) ) = (10, 8);
//                 ^ punctuation.separator.colon.sv
endspecify


// 30.4.4.2 Simple state-dependent paths
module XORgate (a, b, out);
  input a, b;
  output out;
  xor x1 (out, a, b);

  specify
    specparam noninvrise = 1, noninvfall = 2;
    specparam invertrise = 3, invertfall = 4;
    if (a) (b => out) = (invertrise, invertfall);
//  ^^ keyword.control.if.sv
//     ^ punctuation.section.group.begin.sv
//      ^ variable.other.sv
//       ^ punctuation.section.group.end.sv
    if (b) (a => out) = (invertrise, invertfall);
    if (~a)(b => out) = (noninvrise, noninvfall);
    if (~b)(a => out) = (noninvrise, noninvfall);
  endspecify
endmodule

module ALU (o1, i1, i2, opcode);
  input [7:0] i1, i2;
  input [2:1] opcode;
  output [7:0] o1;

  // functional description omitted
  specify
    // add operation
    if (opcode == 2'b00) (i1,i2 *> o1) = (25.0, 25.0);
    // pass-through i1 operation
    if (opcode == 2'b01) (i1 => o1) = (5.6, 8.0);
    // pass-through i2 operation
    if (opcode == 2'b10) (i2 => o1) = (5.6, 8.0);
    // delays on opcode changes
    (opcode *> o1) = (6.1, 6.5);
  endspecify
endmodule


// 30.4.4.3 Edge-sensitive state-dependent paths
specify
  if ( !reset && !clear )
//^^ keyword.control.if.sv
  ( posedge clock => ( out +: in ) ) = (10, 8) ;
//  ^^^^^^^ keyword.other.posedge.sv
endspecify

specify
  ( posedge clk => ( q[0] : data ) ) = (10, 5);
  ( negedge clk => ( q[0] : data ) ) = (20, 12);
endspecify

specify
  if (reset)
    (posedge clk => ( q[0] : data ) ) = (15, 8);
  if (!reset && cntrl)
    (posedge clk => ( q[0] : data ) ) = (6, 2);
endspecify

specify
  if (reset)
    (posedge clk => (q[3:0]:data)) = (10,5);
  if (!reset)
    (posedge clk => (q[0]:data)) = (15,8);
endspecify


// 30.4.4.4 The ifnone condition
specify
  if (C1) (IN => OUT) = (1,1);
  ifnone (IN => OUT) = (2,2);
//^^^^^^ keyword.control.ifnone.sv
  // add operation
  if (opcode == 2'b00) (i1,i2 *> o1) = (25.0, 25.0);
  // pass-through i1 operation
  if (opcode == 2'b01) (i1 => o1) = (5.6, 8.0);
  // pass-through i2 operation
  if (opcode == 2'b10) (i2 => o1) = (5.6, 8.0);
  // all other operations
  ifnone (i2 => o1) = (15.0, 15.0);
  if (C1) (posedge CLK => (Q +: D)) = (1,1);
  ifnone (CLK => Q) = (2,2);
endspecify

specify
  if (a) (b => out) = (2,2);
  if (b) (a => out) = (2,2);
  ifnone (a => out) = (1,1);
  (a => out) = (1,1);
endspecify


// 30.4.5 Full connection and parallel connection paths
module mux8 (in1, in2, s, q) ;
  output [7:0] q;
  input [7:0] in1, in2;
  input s;
  // Functional description omitted ...
  specify
    (in1 => q) = (3, 4) ;
//       ^^ keyword.operator.parallel-path.sv
    (in2 => q) = (2, 3) ;
    (s *> q) = 1;
//     ^^ keyword.operator.full-path.sv
  endspecify
endmodule

// 30.4.6 Declaring multiple module paths in a single statement
specify
  (a, b, c *> q1, q2) = 10;
// ^ variable.other.sv
//    ^ variable.other.sv
//       ^ variable.other.sv
//         ^^ keyword.operator.full-path.sv
//            ^^ variable.other.sv
//                ^^ variable.other.sv
endspecify


// 30.4.7 Module path polarity
// 30.4.7.1 Unknown polarity
specify
  (In1 => q) = In_to_q ;
//     ^^ keyword.operator.parallel-path.sv
  (s *> q) = s_to_q ;
//   ^^ keyword.operator.full-path.sv
endspecify

// 30.4.7.2 Positive polarity
specify
  (In1 +=> q) = In_to_q ;
//     ^ keyword.operator.polarity.sv
//      ^^ keyword.operator.parallel-path.sv
  (s +*> q) = s_to_q ;
//   ^ keyword.operator.polarity.sv
//    ^^ keyword.operator.full-path.sv
endspecify

// 30.4.7.3 Negative polarity
specify
  (In1 -=> q) = In_to_q ;
//     ^ keyword.operator.polarity.sv
//      ^^ keyword.operator.parallel-path.sv
  (s -*> q) = s_to_q ;
//   ^ keyword.operator.polarity.sv
//    ^^ keyword.operator.full-path.sv
endspecify
