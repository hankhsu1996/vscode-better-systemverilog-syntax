// SYNTAX TEST "source-text.sv"

specify
  $setuphold( posedge clk, data, tSU, tHLD );
//^^^^^^^^^^ keyword.other.setuphold.sv
//            ^^^^^^^ keyword.other.posedge.sv
//                    ^^^ variable.other.sv
//                         ^^^^ variable.other.sv
//                               ^^^ variable.other.sv
//                                    ^^^^ variable.other.sv
  $setup( data, posedge clk, tSU );
//^^^^^^ keyword.other.setup.sv
//        ^^^^ variable.other.sv
//              ^^^^^^^ keyword.other.posedge.sv
//                      ^^^ variable.other.sv
//                           ^^^ variable.other.sv
  $hold( posedge clk, data, tHLD );
//^^^^^ keyword.other.hold.sv
//       ^^^^^^^ keyword.other.posedge.sv
//               ^^^ variable.other.sv
//                    ^^^^ variable.other.sv
//                          ^^^^ variable.other.sv
  $recrem( posedge clear, posedge clk, tREC, tREM );
//^^^^^^^ keyword.other.recrem.sv
//         ^^^^^^^ keyword.other.posedge.sv
//                 ^^^^^ variable.other.sv
//                        ^^^^^^^ keyword.other.posedge.sv
//                                ^^^ variable.other.sv
//                                     ^^^^ variable.other.sv
//                                           ^^^^ variable.other.sv
  $removal( posedge clear, posedge clk, tREM );
//^^^^^^^^ keyword.other.removal.sv
//          ^^^^^^^ keyword.other.posedge.sv
//                  ^^^^^ variable.other.sv
//                         ^^^^^^^ keyword.other.posedge.sv
//                                 ^^^ variable.other.sv
//                                      ^^^^ variable.other.sv
  $recovery( posedge clear, posedge clk, tREC );
//^^^^^^^^^ keyword.other.recovery.sv
//           ^^^^^^^ keyword.other.posedge.sv
//                   ^^^^^ variable.other.sv
//                          ^^^^^^^ keyword.other.posedge.sv
//                                  ^^^ variable.other.sv
//                                       ^^^^ variable.other.sv
endspecify
