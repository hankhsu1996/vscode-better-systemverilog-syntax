// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.6--ifdef-chained-nested
:description: Test
:tags: 22.6
:type: preprocessing
*/
module test;
`ifdef first_block
//<------ keyword.control.ifdef.sv
  `ifndef second_nest
//^^^^^^^ keyword.control.ifndef.sv
    initial $display("first_block is defined");
  `else
//^^^^^ keyword.control.else.sv
    initial $display("first_block and second_nest defined");
  `endif
//^^^^^^ keyword.control.endif.sv
`elsif second_block
//<------ keyword.control.elsif.sv
  initial $display("second_block defined, first_block is not");
`else
//<--- keyword.control.else.sv
  `ifndef last_result
//^^^^^^^ keyword.control.ifndef.sv
    initial $display("first_block, second_block,", " last_result not defined.");
  `elsif real_last
//^^^^^ keyword.control.elsif.sv
    initial $display("first_block, second_block not defined,", " last_result and real_last defined.");
  `else
//^^^^ keyword.control.else.sv
    initial $display("Only last_result defined!");
  `endif
//^^^^^^ keyword.control.endif.sv
`endif
//<------ keyword.control.endif.sv
endmodule
