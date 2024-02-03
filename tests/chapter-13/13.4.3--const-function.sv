// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: const_function
:description: const function test
:tags: 13.4.3
:type: simulation elaboration parsing
*/
module top();

localparam a = fun(3);
//             ^^^ entity.name.function.sv
function int fun(int val);
  return val + 1;
endfunction

initial
  $display(":assert: (%d == 4)", a);

endmodule
