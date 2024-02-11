// SYNTAX TEST "source-text.sv"

// Fail safe test: when we have incomplete statement, color it immediately.


// blocking_assignment
module Test;
//<------ storage.type.module.sv
  initial begin
    my_var = my_var + 1
//  ^^^^^^ variable.other.sv
//           ^^^^^^ variable.other.sv
endmodule
//<-------- storage.type.module.sv


// nonblocking_assignment
module Test;
//<------ storage.type.module.sv
  always_ff @(posedge clk) begin
    my_var <= my_var + 1
endmodule
//<-------- storage.type.module.sv


// procedural_continuous_assignment
module Test;
//<------ storage.type.module.sv
  assign my_var = my_var + 1
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  deassign my_var
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  force my_var = my_var + 1
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  release my_var
endmodule
//<-------- storage.type.module.sv


// case_statement
module Test;
//<------ storage.type.module.sv
initial
    case
//  ^^^^ keyword.control.case.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
initial
    case (my_cond)
//  ^^^^ keyword.control.case.sv
//        ^^^^^^^ variable.other.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    case (my_cond)
//  ^^^^ keyword.control.case.sv
//        ^^^^^^^ variable.other.sv
      2'b00: my_var = 0
//    ^^^^^ constant.numeric.binary.sv
//           ^^^^^^ variable.other.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    case (my_cond)
      2'b00: my_var = 0;
      default
//    ^^^^^^^ keyword.control.default.sv
endmodule
//<-------- storage.type.module.sv


// conditional_statement
module Test;
//<------ storage.type.module.sv
  initial
    if
//  ^^ keyword.control.if.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    if (my_cond)
//  ^^ keyword.control.if.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    if (my_cond) begin
//  ^^ keyword.control.if.sv
    end else
//      ^^^^ keyword.control.else.sv
endmodule
//<-------- storage.type.module.sv


// inc_or_dec_expression
module Test;
//<------ storage.type.module.sv
  initial
    my_var++
//  ^^^^^^ variable.other.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    --my_var
//    ^^^^^^ variable.other.sv
endmodule
//<-------- storage.type.module.sv


// subroutine_call_statement
module Test;
//<------ storage.type.module.sv
  initial
    my_subroutine()
//  ^^^^^^^^^^^^^ entity.name.function.sv
endmodule
//<-------- storage.type.module.sv


// disable_statement
module Test;
//<------ storage.type.module.sv
  initial
    disable
//  ^^^^^^^ keyword.control.disable.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    disable fork
//  ^^^^^^^ keyword.control.disable.sv
//          ^^^^ keyword.control.fork.sv
endmodule
//<-------- storage.type.module.sv


// event_trigger
module Test;
//<------ storage.type.module.sv
  initial
    ->
//  ^^ punctuation.definition.event-trigger.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    ->>
//  ^^^ punctuation.definition.event-trigger.sv
endmodule
//<-------- storage.type.module.sv


// loop_statement
module Test;
//<------ storage.type.module.sv
  initial
    forever
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    repeat
//  ^^^^^^ keyword.control.repeat.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    while
//  ^^^^^ keyword.control.while.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    for
//  ^^^ keyword.control.for.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    do
//  ^^ keyword.control.do.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    foreach
//  ^^^^^^^ keyword.control.foreach.sv
endmodule
//<-------- storage.type.module.sv


// jump_statement
module Test;
//<------ storage.type.module.sv
  function my_func;
    return
//  ^^^^^^^ keyword.control.return.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  function my_func;
    break
//  ^^^^^ keyword.control.break.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  function my_func;
    continue
//  ^^^^^^^^ keyword.control.continue.sv
endmodule
//<-------- storage.type.module.sv


// par_block
module Test;
//<------ storage.type.module.sv
  initial
    fork
//  ^^^^ keyword.control.fork.sv
endmodule
//<-------- storage.type.module.sv


// seq_block
module Test;
//<------ storage.type.module.sv
  initial begin
//^^^^^^^ keyword.control.initial.sv
//        ^^^^^ keyword.control.begin.sv
endmodule
//<-------- storage.type.module.sv


// wait_statement
module Test;
//<------ storage.type.module.sv
  initial
    wait
//  ^^^^ keyword.control.wait.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    wait fork
//  ^^^^ keyword.control.wait.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial
    wait_order
//  ^^^^^^^^^^ keyword.control.wait_order.sv
endmodule
//<-------- storage.type.module.sv


// procedural_assertion_statement
module Test;
//<------ storage.type.module.sv
  assert
//^^^^^^ keyword.control.assert.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assert property
//^^^^^^ keyword.control.assert.sv
//       ^^^^^^^^ keyword.control.property.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assume
//^^^^^^ keyword.control.assume.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assume property
//^^^^^^ keyword.control.assume.sv
//       ^^^^^^^^ keyword.control.property.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  cover
//^^^^^ keyword.control.cover.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  cover property
//^^^^^ keyword.control.cover.sv
//      ^^^^^^^^ keyword.control.property.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  cover sequence
//^^^^^ keyword.control.cover.sv
//      ^^^^^^^^ keyword.control.sequence.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  restrict
//^^^^^^^^ keyword.control.restrict.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  restrict property
//^^^^^^^^ keyword.control.restrict.sv
//         ^^^^^^^^ keyword.control.property.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assert #0
//^^^^^^ keyword.control.assert.sv
//       ^ punctuation.definition.delay.sv
//        ^ constant.numeric.integer.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assert final
//^^^^^^ keyword.control.assert.sv
//       ^^^^^ keyword.control.final.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assume #0
//^^^^^^ keyword.control.assume.sv
//       ^ punctuation.definition.delay.sv
//        ^ constant.numeric.integer.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  assume final
//^^^^^^ keyword.control.assume.sv
//       ^^^^^ keyword.control.final.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  cover #0
//^^^^^ keyword.control.cover.sv
//      ^ punctuation.definition.delay.sv
//       ^ constant.numeric.integer.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  cover final
//^^^^^ keyword.control.cover.sv
//      ^^^^^ keyword.control.final.sv
endmodule
//<-------- storage.type.module.sv


// randsequence_statement
module Test;
//<------ storage.type.module.sv
  randsequence
//^^^^^^^^^^^^ keyword.control.randsequence.sv
endmodule
//<-------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  randsequence()
//^^^^^^^^^^^^ keyword.control.randsequence.sv
endmodule
//<-------- storage.type.module.sv


// randcase_statement
module Test;
//<------ storage.type.module.sv
  randcase
//^^^^^^^^ keyword.control.randcase.sv
endmodule
//<-------- storage.type.module.sv


// expect_property_statement
module Test;
//<------ storage.type.module.sv
  expect
//^^^^^^ keyword.control.expect.sv
endmodule
//<-------- storage.type.module.sv
