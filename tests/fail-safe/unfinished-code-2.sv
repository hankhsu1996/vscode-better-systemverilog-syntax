// SYNTAX TEST "source-text.sv"

// Fail safe test: when we code a begin/end block in a first level element (module, primitive, interface, package) and is not finished, the first level element should be able to close the block and continue parsing the next elements.

// Function in module
module Test;
//<------ storage.type.module.sv
  function
//^^^^^^^^ storage.type.function.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  function my_func();
//^^^^^^^^ storage.type.function.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  function my_func();
//^^^^^^^^ storage.type.function.sv
    logic internal_var;
endmodule
//<--------- storage.type.module.sv



// Task in module
module Test;
//<------ storage.type.module.sv
  task
//^^^^ storage.type.task.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  task my_func();
//^^^^ storage.type.task.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  task my_func();
//^^^^ storage.type.task.sv
    logic internal_var;
endmodule
//<--------- storage.type.module.sv



// Generate in module
module Test;
//<------ storage.type.module.sv
  generate
//^^^^^^^^ keyword.control.generate.sv
endmodule
//<--------- storage.type.module.sv



// Clocking in module
module Test;
//<------ storage.type.module.sv
  clocking
//^^^^^^^^ storage.type.clocking.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  clocking my_clocking @(posedge clk);
//^^^^^^^^ storage.type.clocking.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  clocking my_clocking @(posedge clk);
//^^^^^^^^ storage.type.clocking.sv
    input #1 my_input;
endmodule
//<--------- storage.type.module.sv



// Checker in module
module Test;
//<------ storage.type.module.sv
  checker
//^^^^^^^ storage.type.checker.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  checker my_checker ();
//^^^^^^^ storage.type.checker.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  checker my_checker ();
//^^^^^^^ storage.type.checker.sv
    logic internal_var;
endmodule
//<--------- storage.type.module.sv



// Class in module
module Test;
//<------ storage.type.module.sv
  class
//^^^^^ storage.type.class.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  class my_class;
//^^^^^ storage.type.class.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  class my_class;
//^^^^^ storage.type.class.sv
    rand logic internal_var;
endmodule
//<--------- storage.type.module.sv



// Covergroup in module
module Test;
//<------ storage.type.module.sv
  covergroup
//^^^^^^^^^^ storage.type.covergroup.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  covergroup my_covergroup();
//^^^^^^^^^^ storage.type.covergroup.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  covergroup my_covergroup();
//^^^^^^^^^^ storage.type.covergroup.sv
    coverpoint my_var iff (~reset)
endmodule
//<--------- storage.type.module.sv



// Property in module
module Test;
//<------ storage.type.module.sv
  property
//^^^^^^^^ storage.type.property.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  property my_property;
//^^^^^^^^ storage.type.property.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  property my_property;
//^^^^^^^^ storage.type.property.sv
    seq1 |-> seq2
endmodule
//<--------- storage.type.module.sv



// Sequence in module
module Test;
//<------ storage.type.module.sv
  sequence
//^^^^^^^^ storage.type.sequence.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  sequence my_seq;
//^^^^^^^^ storage.type.sequence.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  sequence my_seq;
//^^^^^^^^ storage.type.sequence.sv
    cond1 ##1 cond2
endmodule
//<--------- storage.type.module.sv



// Begin/End block in module
module Test;
//<------ storage.type.module.sv
  initial begin
//        ^^^^^ keyword.control.begin.sv
endmodule
//<--------- storage.type.module.sv

module Test;
//<------ storage.type.module.sv
  initial begin
    for (int i=0; i<10; i++) begin
//                           ^^^^^ keyword.control.begin.sv
endmodule
//<--------- storage.type.module.sv
