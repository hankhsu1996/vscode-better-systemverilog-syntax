// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.6--ifdef-nested
:description: Test
:tags: 22.6
:type: preprocessing
*/
module test(out);
output out;
`define wow
//<------ keyword.control.define.sv
`define nest_one
//<------ keyword.control.define.sv
`define second_nest
//<------ keyword.control.define.sv
`define nest_two
//<------ keyword.control.define.sv
`ifdef wow
//<---- keyword.control.ifdef.sv
  initial $display("wow is defined");
  `ifdef nest_one
//^^^^^^ keyword.control.ifdef.sv
    initial $display("nest_one is defined");
    `ifdef nest_two
//  ^^^^^^ keyword.control.ifdef.sv
      initial $display("nest_two is defined");
    `else
//  ^^^^^ keyword.control.else.sv
      initial $display("nest_two is not defined");
    `endif
//  ^^^^^^ keyword.control.endif.sv
  `else
//^^^^^ keyword.control.else.sv
    initial $display("nest_one is not defined");
  `endif
//^^^^^^ keyword.control.endif.sv
`else
//<----- keyword.control.else.sv
  initial $display("wow is not defined");
  `ifdef second_nest
//^^^^^^ keyword.control.ifdef.sv
    initial $display("second_nest is defined");
  `else
//^^^^^ keyword.control.else.sv
    initial $display("second_nest is not defined");
  `endif
//^^^^^^ keyword.control.endif.sv
`endif
//<------ keyword.control.endif.sv
endmodule
