// SYNTAX TEST "source-text.sv"


// 30.7.1 Specify block control of pulse limit values
specify
  (clk => q) = 12;
  (data => q) = 10;
  (clr, pre *> q) = 4;

  specparam
    PATHPULSE$clk$q = (2,9),
//  ^^^^^^^^^^^^^^^ variable.other.constant.sv
//                     ^ constant.numeric.integer.sv
//                       ^ constant.numeric.integer.sv
    PATHPULSE$clr$q = (0,4),
//  ^^^^^^^^^^^^^^^ variable.other.constant.sv
//                     ^ constant.numeric.integer.sv
//                       ^ constant.numeric.integer.sv
    PATHPULSE$ = 3;
//  ^^^^^^^^^^ variable.other.constant.sv
//               ^ constant.numeric.integer.sv

endspecify


// 30.7.4 Detailed pulse control capabilities
specify
  (a=>out)=(2,3);
  (b =>out)=(3,4);
endspecify

specify
  (a=>out)=(2,3);
  showcancelled out;
//^^^^^^^^^^^^^ keyword.other.showcancelled.sv
  (b =>out)=(3,4);
endspecify

specify
  showcancelled out;
//^^^^^^^^^^^^^ keyword.other.showcancelled.sv
  pulsestyle_ondetect out;
//^^^^^^^^^^^^^^^^^^^ keyword.other.pulsestyle_ondetect.sv
  (a => out) = (2,3);
  (b => out) = (4,5);
  showcancelled out_b;
//^^^^^^^^^^^^^ keyword.other.showcancelled.sv
  pulsestyle_ondetect out_b;
//^^^^^^^^^^^^^^^^^^^ keyword.other.pulsestyle_ondetect.sv
  (a => out_b) = (3,4);
  (b => out_b) = (5,6);
endspecify

specify
  showcancelled out,out_b;
//^^^^^^^^^^^^^ keyword.other.showcancelled.sv
  pulsestyle_ondetect out,out_b;
//^^^^^^^^^^^^^^^^^^^ keyword.other.pulsestyle_ondetect.sv
  (a => out) = (2,3);
  (b => out) = (4,5);
  (a => out_b) = (3,4);
  (b => out_b) = (5,6);
endspecify
