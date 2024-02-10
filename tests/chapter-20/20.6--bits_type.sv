// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: bits_type_function
:description: $bits with type argument
:tags: 20.6
:type: simulation elaboration parsing
*/

module top();

typedef struct packed {
  logic val1;
  bit [7:0] val2;
} mystruct;

initial begin
  $display(":assert: (%d == 9)", $bits(mystruct));
//                               ^^^^^ entity.name.function.sv
//                                     ^^^^^^^^ variable.other.sv
end

endmodule
