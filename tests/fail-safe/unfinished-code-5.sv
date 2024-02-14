// SYNTAX TEST "source-text.sv"

// Fail safe test: unfinished statement inserted before another statement.


module Test;
  initial begin
    // blocking_assignment
    my_var =
    for ();
//  ^^^ keyword.control.for.sv

    // nonblocking_assignment
    my_var <=
    for ();
//  ^^^ keyword.control.for.sv

    // procedural_continuous_assignment
    assign my_var =
    for ();
//  ^^^ keyword.control.for.sv

    deassign
    for ();
//  ^^^ keyword.control.for.sv

    force
    for ();
//  ^^^ keyword.control.for.sv

    release
    for ();
//  ^^^ keyword.control.for.sv

    // disable_statement
    disable
    for ();
//  ^^^ keyword.control.for.sv

    // jump_statement
    return
    for ();
//  ^^^ keyword.control.for.sv

    // wait_statement
    wait
    for ();
//  ^^^ keyword.control.for.sv

    wait_order
    for ();
//  ^^^ keyword.control.for.sv

    // procedural_assertion_statement
    assert
    for ();
//  ^^^ keyword.control.for.sv

    assume
    for ();
//  ^^^ keyword.control.for.sv

    cover
    for ();
//  ^^^ keyword.control.for.sv

    // expect_property_statement
    expect
    for ();
//  ^^^ keyword.control.for.sv

  end
endmodule
