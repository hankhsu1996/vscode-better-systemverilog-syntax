// SYNTAX TEST "source-text.sv"

// Comment after define
`define MY_VAR 1 // Line comment
//               ^^^^^^^^^^^^^^^ comment.line.sv
`define MY_VAR 1 /* Block comment */
//               ^^^^^^^^^^^^^^^^^^^ comment.block.sv

`MACRO_TASK_BODY(
  super.setup();
//^^^^^ variable.language.super.sv
//      ^^^^^ entity.name.function.sv
  my_sig = '0;
//^^^^^^ variable.other.sv
//         ^^ constant.numeric.unbased-unsized.sv
  `RESET();
//^^^^^^ meta.preprocessor.macro-name.sv
  @(posedge clk);
//  ^^^^^^^ keyword.other.posedge.sv
)
