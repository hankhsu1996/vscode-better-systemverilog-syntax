// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: value_plusargs
:description: $value$plusargs test
:tags: 21.6
:type: simulation elaboration parsing
*/
module top();

integer i;

initial begin
  if ($value$plusargs("TEST=%d", i)) $display("i=%d", i);
//    ^^^^^^^^^^^^^^^ entity.name.function.sv
//                    ^^^^^^^^^ string.quoted.double.sv
//                               ^ variable.other.sv
  else
    $display("TEST not found");
end

endmodule
