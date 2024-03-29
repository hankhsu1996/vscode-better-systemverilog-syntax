// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic_constraint_modification_0
:description: dynamic constraint modification test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int b;
    constraint c { b dist { 3 := 0, 10 := 1}; }
endclass


class env extends uvm_env;

  a obj = new;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      obj.randomize() with { b dist { 3 := 1, 10 := 0}; };
//                             ^^^^ keyword.other.dist.sv

      if(obj.b == 3) begin
        `uvm_info("RESULT", $sformatf("obj.b = %0d SUCCESS", obj.b), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("obj.b = %0d FAILED", obj.b));
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
