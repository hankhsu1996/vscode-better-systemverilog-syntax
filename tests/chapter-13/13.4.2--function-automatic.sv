// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: function_automatic
:description: automatic function test
:tags: 13.4.2
:type: simulation elaboration parsing
*/
module top();

  function automatic int add(int val);
//^^^^^^^^ storage.type.function.sv
//         ^^^^^^^^^ storage.modifier.automatic.sv
    int a = 0;
    a = a + val;
    return a;
  endfunction

initial
  begin
    $display(":assert: (%d == 5)", add(5));
    $display(":assert: (%d == 5)", add(5));
    $display(":assert: (%d == 5)", add(5));
    $display(":assert: (%d == 5)", add(5));
  end

endmodule
