// SYNTAX TEST "source-text.sv"

// Comment after define
`define MY_VAR 1 // Line comment
//               ^^^^^^^^^^^^^^^ comment.line.sv
`define MY_VAR 1 /* Block comment */
//               ^^^^^^^^^^^^^^^^^^^ comment.block.sv
