// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assert_final_test_uvm
:description: assert final test with UVM
:type: simulation elaboration parsing
:tags: uvm uvm-assertions
:timeout: 60
*/

import uvm_pkg::*;
`include "uvm_macros.svh"

module inverter (
    input [7:0] a,
    output [7:0] b
);

    assign b = !a;

endmodule: inverter

interface inverter_if(
    output reg [7:0] a,
    input [7:0] b
);

endinterface: inverter_if

string label = "ASSERT_FINAL_UVM";

class env extends uvm_env;
    virtual inverter_if m_if;

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void connect_phase(uvm_phase phase);
        `uvm_info(label, "Started connect phase", UVM_LOW);
        assert(uvm_resource_db#(virtual inverter_if)::read_by_name(
//      ^^^^^^ keyword.control.assert.sv
//            ^ punctuation.section.group.begin.sv
//             ^^^^^^^^^^^^^^^ entity.name.type.sv
//                              ^^^^^^^ storage.modifier.virtual.sv
//                                      ^^^^^^^^^^^ entity.name.type.sv
//                                                    ^^^^^^^^^^^^ entity.name.function.sv
            get_full_name(), "inverter_if", m_if));
//          ^^^^^^^^^^^^^ entity.name.function.sv
//                           ^^^^^^^^^^^^^ string.quoted.double.sv
//                                          ^^^^ variable.other.sv
        `uvm_info(label, "Finished connect phase", UVM_LOW);
    endfunction: connect_phase

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        `uvm_info(label, "Started run phase", UVM_LOW);
        begin
            int a = 8'h35;
            m_if.a <= a;

            assert final (m_if.a != m_if.b) else $error($sformatf("assert failed :assert: (False)"));
//          ^^^^^^ keyword.control.assert.sv
//                 ^^^^^ keyword.control.final.sv
//                        ^^^^ variable.other.sv
//                             ^ variable.other.sv
//                               ^^ keyword.operator.binary.sv
//                                  ^^^^ variable.other.sv
//                                       ^ variable.other.sv
//                                          ^^^^ keyword.control.else.sv
        end
        `uvm_info(label, "Finished run phase", UVM_LOW);
        phase.drop_objection(this);
    endtask: run_phase
endclass

module top;
    env environment;

    inverter_if dif();

    inverter dut(.a(dif.a), .b(dif.b));

    initial begin
        environment = new("env");
        uvm_resource_db#(virtual inverter_if)::set("env",
            "inverter_if", dif);
        run_test();
    end
endmodule
