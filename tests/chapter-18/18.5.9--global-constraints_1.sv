// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: global_constraints_1
:description: global constraints test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int v;
endclass

class b extends a;
    rand a aObj;

    constraint c { aObj.v < v; }
endclass

class env extends uvm_env;

  b bObj = new;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      bObj.randomize();
      if(bObj.aObj.v < bObj.v) begin
        `uvm_info("RESULT", $sformatf("%0d < %0d SUCCESS", bObj.aObj.v, bObj.v), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("%0d !< %0d FAILED", bObj.aObj.v, bObj.v));
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
