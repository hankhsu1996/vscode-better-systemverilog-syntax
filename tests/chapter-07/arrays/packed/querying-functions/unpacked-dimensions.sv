// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: arrays-packed-quering-functions-unpacked-dimensions
:description: Test quering functions support on packed arrays
:tags: 7.11 7.4.1
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr;

initial begin
  $display(":assert: (%d == 0)", $unpacked_dimensions(arr));
//                               ^^^^^^^^^^^^^^^^^^^^ entity.name.function.sv
end

endmodule
