// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: onehot_function
:description: $onehot test
:tags: 20.9
:type: simulation elaboration parsing
*/

module top();

initial begin
  logic [31:0] val0 = 32'h00010000;
  logic [31:0] val1 = 32'h00010100;
  logic [31:0] val2 = 32'h00000000;
  $display(":assert: (%d == 1)", $onehot(val0));
//                               ^^^^^^^ entity.name.function.sv
//                                       ^^^^ variable.other.sv
  $display(":assert: (%d == 0)", $onehot(val1));
  $display(":assert: (%d == 0)", $onehot(val2));
end

endmodule
