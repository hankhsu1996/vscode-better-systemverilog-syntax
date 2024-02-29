// SYNTAX TEST "source-text.sv"

specify
  // posedge
  $width ( edge[01, 0x, x1] clr, lim );
//         ^^^^ keyword.other.edge.sv
//             ^ punctuation.section.brackets.begin.sv
//              ^^ constant.numeric.edge-descriptor.sv
//                  ^^ constant.numeric.edge-descriptor.sv
//                      ^^ constant.numeric.edge-descriptor.sv
//                        ^ punctuation.section.brackets.end.sv
  // negedge
  $width ( edge[10, x0, 1x] clr, lim );
//         ^^^^ keyword.other.edge.sv
//             ^ punctuation.section.brackets.begin.sv
//              ^^ constant.numeric.edge-descriptor.sv
//                  ^^ constant.numeric.edge-descriptor.sv
//                      ^^ constant.numeric.edge-descriptor.sv
//                        ^ punctuation.section.brackets.end.sv
endspecify
