// SYNTAX TEST "source-text.sv"

// Every kind of checker_or_generate_item (LRM A.1.8) at the top of a checker body
checker c(logic clk, logic a);
  logic flag;
//      ^^^^ meta.checker-body.sv variable.other.sv
  rand bit r;
//^^^^ storage.modifier.rand.sv
//         ^ variable.other.sv
  function automatic bit pass(bit x);
//^^^^^^^^ meta.function-declaration.sv storage.type.function.sv
//                       ^^^^ entity.name.function.sv
    return x;
  endfunction
  property p; @(posedge clk) a; endproperty
//^^^^^^^^ storage.type.property.sv
  always_ff @(posedge clk) flag <= a;
//^^^^^^^^^ meta.checker-body.sv keyword.control.always_ff.sv
//                         ^^^^ variable.other.sv
//                              ^^ keyword.operator.assignment.sv
  always @(posedge clk) flag <= !a;
//^^^^^^ keyword.control.always.sv
//                      ^^^^ variable.other.sv
  always_comb flag = a;
//^^^^^^^^^^^ keyword.control.always_comb.sv
//            ^^^^ variable.other.sv
  always_latch if (a) flag = 1;
//^^^^^^^^^^^^ keyword.control.always_latch.sv
//             ^^ keyword.control.if.sv

  initial $info("start");
//^^^^^^^ keyword.control.initial.sv
//        ^^^^^ meta.system-tf-call.sv entity.name.function.sv
  final $display("done");
//^^^^^ keyword.control.final.sv

  // assertion_item, concurrent and deferred
  a1: assert property (@(posedge clk) a);
//^^ variable.other.block.sv
//    ^^^^^^ keyword.control.assert.sv
  a2: assert #0 (a);
//    ^^^^^^ meta.assertion-statement.sv keyword.control.assert.sv
  assert final (a);
//^^^^^^ meta.assertion-statement.sv keyword.control.assert.sv

  assign flag = a;
//^^^^^^ keyword.control.assign.sv

  // checker_generate_item, including an elaboration severity task
  $error("not allowed here");
//^^^^^^ meta.system-tf-call.sv entity.name.function.sv
  for (genvar i = 0; i < 2; i++) begin : g
    always_ff @(posedge clk) flag <= a;
//  ^^^^^^^^^ keyword.control.always_ff.sv
  end
  if (1) begin : h
    always_comb flag = a;
//  ^^^^^^^^^^^ keyword.control.always_comb.sv
  end
endchecker
//<---------- storage.type.checker.sv

module after;
//<------ storage.type.module.sv
endmodule
