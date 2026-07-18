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


`define MACRO_FUNC(name) \
  logic \escapeIdentifier ;
//^^^^^ entity.name.type.sv
//      ^^^^^^^^^^^^^^^^^ variable.other.sv

`define MACRO_FUNC(name) \
  logic \escapeIdentifier``name`` ;
//^^^^^ entity.name.type.sv
//      ^^^^^^^^^^^^^^^^^ variable.other.sv
//                       ^^ keyword.operator.macro-concatenation.sv
//                         ^^^^ variable.other.sv
//                             ^^ keyword.operator.macro-concatenation.sv

`define msg(x,y) `"x: `\`"y`\`"`"
//               ^^ constant.character.escape.sv
//                    ^^^^ constant.character.escape.sv
//                         ^^^^ constant.character.escape.sv
//                             ^^ constant.character.escape.sv

`define msg(x,y) (`"x: `\`"y`\`"`")
//                ^^ constant.character.escape.sv
//                     ^^^^ constant.character.escape.sv
//                          ^^^^ constant.character.escape.sv
//                              ^^ constant.character.escape.sv

`define MY_KEYWORD posedge
//                 ^^^^^^^ keyword.other.posedge.sv

// Token paste `` on an uppercase macro argument, in an expression. Both the
// operator and the pasted suffix must be highlighted (no bogus macro ref).
`define TIE(NAME) assign NAME``_q = NAME``_d;
//                       ^^^^ variable.other.sv
//                           ^^ keyword.operator.macro-concatenation.sv
//                             ^^ variable.other.sv
//                                  ^^^^ variable.other.constant.sv
//                                      ^^ keyword.operator.macro-concatenation.sv
//                                        ^^ variable.other.sv
