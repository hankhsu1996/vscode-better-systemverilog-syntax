// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: realtobits_bitstoreal_functions
:description: $realtobits and $bitstoreal test
:tags: 20.5
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: (%f == 12.45)", $bitstoreal($realtobits(12.45)));
//                                   ^^^^^^^^^^^ entity.name.function.sv
//                                               ^^^^^^^^^^^ entity.name.function.sv
//                                                           ^^^^^ constant.numeric.real.sv
end

endmodule
