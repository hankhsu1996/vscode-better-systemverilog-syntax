// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: typename_function
:description: $typename test
:tags: 20.6
:type: simulation elaboration parsing
*/

module top();

initial begin
  logic val;
  $display(":assert: ('%s' == 'logic')", $typename(val));
//                                       ^^^^^^^^^ entity.name.function.sv
//                                                 ^^^ variable.other.sv
end

endmodule
