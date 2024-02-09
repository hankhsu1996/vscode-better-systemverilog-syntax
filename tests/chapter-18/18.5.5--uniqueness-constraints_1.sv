// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: uniqueness_constraints_1
:description: uniqueness constraints test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int b1, b2;
    constraint c1 { b1 inside {3, 10}; }
    constraint c2 { b2 inside {3, 10}; }
    constraint c3 { unique {b1, b2}; }
//                  ^^^^^^ keyword.other.unique.sv
//                         ^ punctuation.section.braces.begin.sv
//                          ^^ variable.other.sv
//                            ^ punctuation.separator.comma.sv
//                              ^^ variable.other.sv
//                                ^ punctuation.section.braces.end.sv
//                                 ^ punctuation.terminator.semicolon.sv
endclass

class env extends uvm_env;

  a obj = new;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      obj.randomize();
      if((obj.b1 == 3 && obj.b2 == 10) ||
         (obj.b2 == 3 && obj.b1 == 10))
      begin
        `uvm_info("RESULT", $sformatf("b1 = %0d b2 = %0d SUCCESS", obj.b1, obj.b2), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("b1 = %0d b2 = %0d FAILED", obj.b1, obj.b2));
      end
    end
    phase.drop_objection(this);
  endtask: run_phase

endclass

module top;

  env environment;

  initial begin
    environment = new("env");
    run_test();
  end

endmodule
