// SYNTAX TEST "source-text.sv"

/*
:name: in_line_constraint_block
:description: the block after randomize() with is a constraint block
:tags: 18.7
*/

class packet;

  rand int len;
  rand bit mode;

  function void gen();

    void'(randomize() with { soft len == 4; });
//                    ^^^^ keyword.other.with.sv
//                         ^ meta.constraint-block.sv punctuation.section.braces.begin.sv
//                           ^^^^ keyword.other.soft.sv
//                                          ^ punctuation.section.braces.end.sv

    void'(randomize() with { mode -> len > 8; });
//                    ^^^^ keyword.other.with.sv
//                         ^ meta.constraint-block.sv punctuation.section.braces.begin.sv
//                                ^^ keyword.operator.constraint.sv

  endfunction

endclass
