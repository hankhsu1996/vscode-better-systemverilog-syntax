// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: set_randstate_0
:description: set_randstate() test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int x;
endclass

class env extends uvm_env;

  a obj = new;
  string randstate;
  int prev_x;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      randstate = obj.get_randstate();
      obj.randomize();
      prev_x = obj.x;
      obj.set_randstate(randstate);
//        ^^^^^^^^^^^^^ entity.name.function.sv
      obj.randomize();

      if(obj.x == prev_x) begin
        `uvm_info("RESULT", $sformatf("obj.x = %0d prev_x = %0d SUCCESS", obj.x, prev_x), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("obj.x = %0d prev_x = %0d FAILED", obj.x, prev_x));
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
