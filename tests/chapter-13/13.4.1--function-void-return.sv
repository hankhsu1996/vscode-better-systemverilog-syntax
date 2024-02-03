// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: function_void_return
:description: void function return value test
:should_fail_because: void function returns value
:tags: 13.4.1
:type: simulation elaboration
*/
module top();

  function void add(int a, int b);
//         ^^^^ entity.name.type.void.sv
    $display("%d+%d=", a, b);
    return a + b;
  endfunction

initial
  $display("%d", add(45, 90));

endmodule
