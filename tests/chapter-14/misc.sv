// SYNTAX TEST "source-text.sv"

// `default clocking id;` names an existing clocking block as the default
// (LRM 14.12). It is a single item, not the start of a clocking block, in
// every scope that can hold one.
module m(input logic clk, rst);
  clocking cb @(posedge clk);
  endclocking
  default clocking cb;
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^^ storage.type.clocking.sv
//                 ^^ variable.other.sv
//                   ^ punctuation.terminator.semicolon.sv
//^^^^^^^^^^^^^^^^^^^^ - meta.clocking-declaration.sv
  default disable iff rst;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.default-disable.sv
//        ^^^^^^^ keyword.control.disable.sv
  initial begin
//^^^^^^^^^^^^^ - meta.clocking-declaration.sv
//        ^^^^^ keyword.control.begin.sv
  end
endmodule
//<--------- storage.type.module.sv

interface i(input logic clk);
  clocking cb @(posedge clk);
  endclocking
  default clocking cb ;
//                 ^^ variable.other.sv
//                    ^ punctuation.terminator.semicolon.sv
  initial begin
//^^^^^^^^^^^^^ - meta.clocking-declaration.sv
//        ^^^^^ keyword.control.begin.sv
  end
endinterface
//<------------ storage.type.interface.sv

program p(input logic clk);
  clocking cb @(posedge clk);
  endclocking
  default clocking cb;
//^^^^^^^^^^^^^^^^^^^^ - meta.clocking-declaration.sv
  initial begin
//^^^^^^^^^^^^^ - meta.clocking-declaration.sv
//        ^^^^^ keyword.control.begin.sv
  end
endprogram
//<---------- storage.type.program.sv

// Inside a generate block
module g(input logic clk);
  if (1) begin : blk
    clocking cb @(posedge clk);
    endclocking
    default clocking cb;
//  ^^^^^^^^^^^^^^^^^^^^ - meta.clocking-declaration.sv
    initial begin
//  ^^^^^^^^^^^^^ - meta.clocking-declaration.sv
//          ^^^^^ keyword.control.begin.sv
    end
  end
endmodule
//<--------- storage.type.module.sv

checker c(logic clk, rst);
  clocking cb @(posedge clk);
  endclocking
  default clocking cb;
//^^^^^^^ keyword.other.default.sv
//        ^^^^^^^^ storage.type.clocking.sv
//                 ^^ variable.other.sv
//                   ^ punctuation.terminator.semicolon.sv
//^^^^^^^^^^^^^^^^^^^^ - meta.clocking-declaration.sv
  default disable iff rst;
//^^^^^^^^^^^^^^^^^^^^^^^^ meta.default-disable.sv
//        ^^^^^^^ keyword.control.disable.sv
  initial begin
//^^^^^^^^^^^^^ - meta.clocking-declaration.sv
//        ^^^^^ keyword.control.begin.sv
  end
endchecker
//<---------- storage.type.checker.sv

// A clocking block declared as the default still opens a block
module d(input logic clk);
  default clocking dcb @(posedge clk);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.clocking-declaration.sv
//                 ^^^ variable.other.sv
    input data;
//  ^^^^^ meta.clocking-declaration.sv storage.modifier.input.sv
  endclocking
//^^^^^^^^^^^ meta.clocking-declaration.sv storage.type.clocking.sv
endmodule
//<--------- storage.type.module.sv
