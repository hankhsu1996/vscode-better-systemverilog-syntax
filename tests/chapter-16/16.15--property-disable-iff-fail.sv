// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: property_disable_iff_fail_test
:description: failing property with disable iff
:should_fail_because: disable iff uses wrong reset polarity
:type: simulation
:tags: 16.15
*/

module clk_gen(
    input      rst,
    input      clk,
    output reg out
);

    initial begin
        out = 0;
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            out <= 0;
        else
            out <= 1;
    end

endmodule: clk_gen

module top();

    logic rst;
    logic clk;
    logic out;

    clk_gen dut(.rst(rst), .clk(clk), .out(out));

    initial begin
        clk   = 0;
        rst   = 1;
    end

    property prop;
//  ^^^^^^^^ storage.type.property.sv
//           ^^^^ entity.name.type.sv
        @(posedge clk) disable iff (~rst) out;
//                     ^^^^^^^ keyword.control.disable.sv
//                             ^^^ keyword.control.iff.sv
    endproperty
//  ^^^^^^^^^^^ storage.type.property.sv

    assert property (prop) else $error($sformatf("property check failed :assert: (False)"));

    initial begin
        forever begin
            #(50) clk = ~clk;
        end
    end

    initial #1000 $finish;

endmodule
