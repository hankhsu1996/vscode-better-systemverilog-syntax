// SYNTAX TEST "source-text.sv"

/*
:name: block_keyword_as_operand
:description: a block keyword used as an operand must not open a block
:tags: 9.6.1 9.6.3
*/

module process_control;

  int counter;
  logic done;

  // LRM 9.6.3: the fork in "disable fork" is the statement's operand, not the
  // start of a fork-join block, so everything after it keeps its scopes.
  initial begin
    disable fork;
//  ^^^^^^^ keyword.control.disable.sv
//          ^^^^ keyword.control.fork.sv
    counter = 42;
//  ^^^^^^^ variable.other.sv
  end
//^^^ keyword.control.end.sv

  // LRM 9.6.1: the same shape with wait
  initial begin
//^^^^^^^ keyword.control.initial.sv
    wait fork;
//  ^^^^ keyword.control.wait.sv
//       ^^^^ keyword.control.fork.sv
    done = 1'b1;
//  ^^^^ variable.other.sv
  end
//^^^ keyword.control.end.sv

  // The other two disable forms name an identifier, not a keyword
  initial begin
//^^^^^^^ keyword.control.initial.sv
    disable collect;
//  ^^^^^^^ keyword.control.disable.sv
//          ^^^^^^^ variable.other.sv
    counter = 0;
  end
//^^^ keyword.control.end.sv

  // A real fork-join block still opens one
  initial begin
//^^^^^^^ keyword.control.initial.sv
    fork
//  ^^^^ keyword.control.fork.sv
      #5 counter = 1;
    join_none
//  ^^^^^^^^^ keyword.control.join_none.sv
    done = 1'b0;
//  ^^^^ variable.other.sv
  end
//^^^ keyword.control.end.sv

endmodule
