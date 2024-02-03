// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic_array_unpack_stream_sim
:description: stream unpack simulation test with dynamic array
:type: simulation elaboration parsing
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
  i_crc = 42;
  i_data = new[5];

  i_data[0] = 1;
  i_data[1] = 2;
  i_data[2] = 3;
  i_data[3] = 4;
  i_data[4] = 5;

  pkt = {<< 8 {i_header, i_len, i_crc, i_data}};
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
//       ^^ keyword.operator.stream.sv
//          ^ constant.numeric.integer.sv
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv

  {<< 8 {o_header, o_len, o_crc, o_data}} = pkt;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
// ^^ keyword.operator.stream.sv
//    ^ constant.numeric.integer.sv
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv

  $display(":assert: (12 == %d)", o_header);
  $display(":assert: (5 == %d)", o_len);
  $display(":assert: (42 == %d)", o_crc);
end

endmodule
