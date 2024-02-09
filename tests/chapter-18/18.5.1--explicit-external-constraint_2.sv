// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: explicit_external_constraint_2
:description: explicit external constraint test
:tags: uvm-random uvm
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

class a;
    rand int b;
    extern constraint c;
//  ^^^^^^ storage.modifier.extern.sv
//         ^^^^^^^^^^ storage.type.constraint.sv
//                    ^ variable.other.sv
//                     ^ punctuation.terminator.semicolon.sv
endclass

  constraint a::c { b == 5; }
//^^^^^^^^^^ storage.type.constraint.sv
//           ^ entity.name.namespace.sv
//            ^^ punctuation.separator.scope-resolution.sv
//              ^ variable.other.sv
//                ^ punctuation.section.braces.begin.sv
//                  ^ variable.other.sv
//                    ^^ keyword.operator.binary.sv
//                       ^ constant.numeric.integer.sv
//                        ^ punctuation.terminator.semicolon.sv
//                          ^ punctuation.section.braces.end.sv

class env extends uvm_env;

  a obj = new;

  function new(string name, uvm_component parent = null);
    super.new(name, parent);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    begin
      obj.randomize();
      if(obj.b == 5) begin
        `uvm_info("RESULT", $sformatf("b = %0d SUCCESS", obj.b), UVM_LOW);
      end else begin
        `uvm_error("RESULT", $sformatf("b = %0d FAILED", obj.b));
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
