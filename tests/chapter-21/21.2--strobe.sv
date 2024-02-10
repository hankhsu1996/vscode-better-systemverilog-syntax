// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: strobe_task
:description: $strobe test
:tags: 21.2
:type: simulation elaboration parsing
*/
module top();

logic clk;
int a;

always @(posedge clk) begin
  $strobe(a);
//^^^^^^^ entity.name.function.sv
//        ^ variable.other.sv
  $strobeb(a);
//^^^^^^^^ entity.name.function.sv
//         ^ variable.other.sv
  $strobeo(a);
//^^^^^^^^ entity.name.function.sv
//         ^ variable.other.sv
  $strobeh(a);
//^^^^^^^^ entity.name.function.sv
//         ^ variable.other.sv
end

endmodule
