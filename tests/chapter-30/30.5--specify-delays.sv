// SYNTAX TEST "source-text.sv"


// 30.5 Assigning delays to module paths
specify
  // Specify Parameters
  specparam tRise_clk_q = 45:150:270, tFall_clk_q=60:200:350;
//^^^^^^^^^ storage.modifier.specparam.sv
//          ^^^^^^^^^^^ variable.other.constant.sv
//                      ^ keyword.operator.assignment.sv
//                        ^^ constant.numeric.integer.sv
//                          ^ punctuation.separator.colon.sv
//                           ^^^ constant.numeric.integer.sv
//                              ^ punctuation.separator.colon.sv
//                               ^^^ constant.numeric.integer.sv
//                                  ^ punctuation.separator.comma.sv
//                                    ^^^^^^^^^^^ variable.other.constant.sv
//                                               ^ keyword.operator.assignment.sv
//                                                ^^ constant.numeric.integer.sv
//                                                  ^ punctuation.separator.colon.sv
//                                                   ^^^ constant.numeric.integer.sv
//                                                      ^ punctuation.separator.colon.sv
//                                                       ^^^ constant.numeric.integer.sv
  specparam tRise_Control = 35:40:45, tFall_control=40:50:65;

  // Module Path Assignments
  (clk => q) = (tRise_clk_q, tFall_clk_q);
  (clr, pre *> q) = (tRise_control, tFall_control);
endspecify

// 30.5.1 Specifying transition delays on module paths
specify
  // one expression specifies all transitions
  (C => Q) = 20;
  (C => Q) = 10:14:20;
//           ^^ constant.numeric.integer.sv
//             ^ punctuation.separator.colon.sv
//              ^^ constant.numeric.integer.sv
//                ^ punctuation.separator.colon.sv
//                 ^^ constant.numeric.integer.sv

  // two expressions specify rise and fall delays
  specparam tPLH1 = 12, tPHL1 = 25;
  specparam tPLH2 = 12:16:22, tPHL2 = 16:22:25;

  (C => Q) = ( tPLH1, tPHL1 ) ;
//             ^^^^^ variable.other.constant.sv
//                    ^^^^^ variable.other.constant.sv
  (C => Q) = ( tPLH2, tPHL2 ) ;

  // three expressions specify rise, fall, and z transition delays
  specparam tPLH1 = 12, tPHL1 = 22, tPz1 = 34;
  specparam tPLH2 = 12:14:30, tPHL2 = 16:22:40, tPz2 = 22:30:34;

  (C => Q) = (tPLH1, tPHL1, tPz1);
//            ^^^^^ variable.other.constant.sv
//                   ^^^^^ variable.other.constant.sv
//                          ^^^^ variable.other.constant.sv
  (C => Q) = (tPLH2, tPHL2, tPz2);

  // six expressions specify transitions to/from 0, 1, and z
  specparam t01 = 12, t10 = 16, t0z = 13,
    tz1 = 10, t1z = 14, tz0 = 34 ;

  (C => Q) = ( t01, t10, t0z, tz1, t1z, tz0) ;
//             ^^^ variable.other.constant.sv
//                  ^^^ variable.other.constant.sv
//                       ^^^ variable.other.constant.sv
//                            ^^^ variable.other.constant.sv
//                                 ^^^ variable.other.constant.sv
//                                      ^^^ variable.other.constant.sv

  specparam T01 = 12:14:24, T10 = 16:18:20, T0z = 13:16:30 ;
  specparam Tz1 = 10:12:16, T1z = 14:23:36, Tz0 = 15:19:34 ;

  (C => Q) = ( T01, T10, T0z, Tz1, T1z, Tz0) ;
//             ^^^ variable.other.constant.sv
//                  ^^^ variable.other.constant.sv
//                       ^^^ variable.other.constant.sv
//                            ^^^ variable.other.constant.sv
//                                 ^^^ variable.other.constant.sv
//                                      ^^^ variable.other.constant.sv

  // twelve expressions specify all transition delays explicitly
  specparam t01=10, t10=12, t0z=14, tz1=15, t1z=29, tz0=36,
    t0x=14, tx1=15, t1x=15, tx0=14, txz=20, tzx=30 ;

  (C => Q) = (t01, t10, t0z, tz1, t1z, tz0,
//            ^^^ variable.other.constant.sv
//                 ^^^ variable.other.constant.sv
//                      ^^^ variable.other.constant.sv
//                           ^^^ variable.other.constant.sv
//                                ^^^ variable.other.constant.sv
//                                     ^^^ variable.other.constant.sv
    t0x, tx1, t1x, tx0, txz, tzx) ;
//  ^^^ variable.other.constant.sv
//       ^^^ variable.other.constant.sv
//            ^^^ variable.other.constant.sv
//                 ^^^ variable.other.constant.sv
//                      ^^^ variable.other.constant.sv
//                           ^^^ variable.other.constant.sv
endspecify
