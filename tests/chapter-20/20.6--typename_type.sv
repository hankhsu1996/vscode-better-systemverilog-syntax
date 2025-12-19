// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: typename_type_function
:description: $typename with type as an argument
:tags: 20.6
:type: simulation elaboration parsing
*/

module top();

initial begin
  $display(":assert: ('%s' == 'logic')", $typename(logic));
//                                       ^^^^^^^^^ entity.name.function.sv
//                                                 ^^^^^ entity.name.type.sv
end

endmodule
