// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_function
:description: $random test
:tags: 20.15
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display("%d", $random);
//               ^^^^^^^ entity.name.function.sv
end

endmodule
