// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: in-line_constraints--randomize_4
:description: in-line constraints test - randomize()
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int x;
endclass

function int F(a obj, int y);
    F = obj.randomize() with (x) { x > 0; x < y; };
//                      ^^^^ keyword.other.with.sv
//                           ^ punctuation.section.group.begin.sv
//                            ^ variable.other.sv
//                             ^ punctuation.section.group.end.sv
//                               ^ punctuation.section.braces.begin.sv
//                                               ^ punctuation.section.braces.end.sv
endfunction

class env extends uvm_env;

  a obj = new;
  int y;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      y = 10;
      F(obj, y);
      if(obj.x > 0 && obj.x < y) begin
        `uvm_info("RESULT", $sformatf("obj.x = %0d y = %0d SUCCESS", obj.x, y), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("obj.x = %0d y = %0d FAILED", obj.x, y));
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
