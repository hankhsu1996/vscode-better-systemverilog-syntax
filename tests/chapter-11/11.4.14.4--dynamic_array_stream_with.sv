// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic_array_unpack_stream_with
:description: stream unpack test with dynamic array using with
:tags: 11.4.14.4
*/
module top();

int i_header;
int i_len;
byte i_data[];
int i_crc;

int o_header;
int o_len;
byte o_data[];
int o_crc;

initial begin
  byte pkt[$];

  i_header = 12;
  i_len = 5;
  i_data = new[5];
  i_crc = 42;

  pkt = {<< 8 {i_header, i_len, i_data, i_crc}};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
//       ^^ keyword.operator.stream.sv
//          ^ constant.numeric.integer.sv
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv

  {<< 8 {o_header, o_len, o_data with [0 +: o_len], o_crc}} = pkt;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
// ^^ keyword.operator.stream.sv
//    ^ constant.numeric.integer.sv
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv
//       ^^^^^^^^ variable.other.sv
//                 ^^^^^ variable.other.sv
//                        ^^^^^^ variable.other.sv
//                               ^^^^ keyword.control.with.sv
//                                    ^^^^^^^^^^^^ meta.dimension.sv
//                                     ^ constant.numeric.integer.sv
//                                       ^^ punctuation.separator.pluscolon.sv
//                                          ^^^^^ variable.other.sv
//                                                  ^^^^^ variable.other.sv
//                                                          ^ keyword.operator.assignment.sv
//                                                            ^^^ variable.other.sv
end

endmodule
