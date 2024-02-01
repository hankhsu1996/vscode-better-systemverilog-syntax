// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: void
:description: void type tests
:tags: 6.13
:type: simulation elaboration parsing
*/
module top();
  function void fun();
//         ^^^^ entity.name.type.void.sv
    $display(":assert:(True)");
  endfunction

  initial
    fun();
endmodule
