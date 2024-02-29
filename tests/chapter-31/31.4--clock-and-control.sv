// SYNTAX TEST "source-text.sv"

specify
  $timeskew (posedge CP &&& MODE, negedge CPN, 50, , event_based_flag,
//^^^^^^^^^ keyword.other.timeskew.sv
//           ^^^^^^^ keyword.other.posedge.sv
//                   ^^ variable.other.sv
//                      ^^^ keyword.operator.timing-check-condition.sv
//                          ^^^^ variable.other.constant.sv
//                                ^^^^^^^ keyword.other.negedge.sv
//                                        ^^^ variable.other.sv
//                                             ^^ constant.numeric.integer.sv
//                                                   ^^^^^^^^^^^^^^^^ variable.other.sv
    remain_active_flag);
//  ^^^^^^^^^^^^^^^^^^ variable.other.sv
  $fullskew (posedge CP &&& MODE, negedge CPN, 50, 70,, event_based_flag,
//^^^^^^^^^ keyword.other.fullskew.sv
//           ^^^^^^^ keyword.other.posedge.sv
//                   ^^ variable.other.sv
//                      ^^^ keyword.operator.timing-check-condition.sv
//                          ^^^^ variable.other.constant.sv
//                                ^^^^^^^ keyword.other.negedge.sv
//                                        ^^^ variable.other.sv
//                                             ^^ constant.numeric.integer.sv
//                                                 ^^ constant.numeric.integer.sv
//                                                      ^^^^^^^^^^^^^^^^ variable.other.sv
    remain_active_flag);
//  ^^^^^^^^^^^^^^^^^^ variable.other.sv
  $width (posedge clk, 6, 0, ntfr_reg);
//^^^^^^ keyword.other.width.sv
//        ^^^^^^^ keyword.other.posedge.sv
//                ^^^ variable.other.sv
//                     ^ constant.numeric.integer.sv
//                        ^ constant.numeric.integer.sv
//                           ^^^^^^^^ variable.other.sv
  $width ( negedge clr, lim );
//^^^^^^ keyword.other.width.sv
//         ^^^^^^^ keyword.other.negedge.sv
//                 ^^^ variable.other.sv
//                      ^^^ variable.other.sv
  $width ( negedge clr, lim, thresh, notif );
//^^^^^^ keyword.other.width.sv
//         ^^^^^^^ keyword.other.negedge.sv
//                 ^^^ variable.other.sv
//                      ^^^ variable.other.sv
//                           ^^^^^^ variable.other.sv
//                                   ^^^^^ variable.other.sv
  $width ( negedge clr, lim, 0, notif );
//^^^^^^ keyword.other.width.sv
//         ^^^^^^^ keyword.other.negedge.sv
//                 ^^^ variable.other.sv
//                      ^^^ variable.other.sv
//                           ^ constant.numeric.integer.sv
//                              ^^^^^ variable.other.sv
  $nochange( posedge clk, data, 0, 0) ;
//^^^^^^^^^ keyword.other.nochange.sv
//           ^^^^^^^ keyword.other.posedge.sv
//                   ^^^ variable.other.sv
//                        ^^^^ variable.other.sv
//                              ^ constant.numeric.integer.sv
//                                 ^ constant.numeric.integer.sv
endspecify
