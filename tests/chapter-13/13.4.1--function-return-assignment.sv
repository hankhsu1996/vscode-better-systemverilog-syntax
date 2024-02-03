// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: function_return_assignment
:description: function return value assignment test
:tags: 13.4.1
:type: simulation elaboration parsing
*/
module top();

  function int add(int a, int b);
//^^^^^^^^ storage.type.function.sv
//         ^^^ entity.name.type.int.sv
//             ^^^ entity.name.function.sv
    add = a + b;
//  ^^^ variable.other.sv
  endfunction

initial
  $display(":assert: (%d == 90)", add(30, 60));

endmodule
