// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: define-directive
:description: Define and undef checks
:tags: 5.6.4
*/

`define XXX 1
//<------- keyword.control.define.sv
//      ^^^ meta.preprocessor.macro-name.sv
//          ^ constant.numeric.integer.sv

`ifdef XXX
//<------ keyword.control.ifdef.sv
//     ^^^ meta.preprocessor.macro-name.sv
`undef XXX
//<------ keyword.control.undef.sv
//     ^^^ meta.preprocessor.macro-name.sv
`elsif YYY
//<------ keyword.control.elsif.sv
//     ^^^ meta.preprocessor.macro-name.sv
`define XXX 0
//<------- keyword.control.define.sv
//      ^^^ meta.preprocessor.macro-name.sv
//          ^ constant.numeric.integer.sv
`endif
//<----- keyword.control.endif.sv

`ifndef YYY
//<------- keyword.control.ifndef.sv
//      ^^^ meta.preprocessor.macro-name.sv
`define YYY 0
//<------- keyword.control.define.sv
//      ^^^ meta.preprocessor.macro-name.sv
//          ^ constant.numeric.integer.sv
`else
//<---- keyword.control.else.sv
`define XXX 0
//<------- keyword.control.define.sv
//      ^^^ meta.preprocessor.macro-name.sv
//          ^ constant.numeric.integer.sv
`endif
//<----- keyword.control.endif.sv

`undefineall
//<------------ keyword.control.undefineall.sv

module d();
endmodule
