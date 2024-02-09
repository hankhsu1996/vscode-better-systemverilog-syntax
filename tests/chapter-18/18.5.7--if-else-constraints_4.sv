// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_constraints_4
:description: if-else constraints test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int b1, b2, b3;
    constraint c1 { b1 == 5; }
    constraint c2 { b2 == 3; }
    constraint c3 { if (b1 == 5)
//                  ^^ keyword.control.if.sv
                      if (b2 == 2) b3 == 4;
//                    ^^ keyword.control.if.sv
                      else b3 == 10;}
//                    ^^^^ keyword.control.else.sv
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
      if(obj.b3 == 10) begin
        `uvm_info("RESULT", $sformatf("b3 = %0d SUCCESS", obj.b3), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("b3 = %0d FAILED", obj.b3));
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
