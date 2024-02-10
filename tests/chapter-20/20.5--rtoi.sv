// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: rtoi_function
:description: $rtoi test
:tags: 20.5
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: (%d == 21)", $rtoi(21.37));
//                                ^^^^^ entity.name.function.sv
//                                      ^^^^^ constant.numeric.real.sv
end

endmodule
