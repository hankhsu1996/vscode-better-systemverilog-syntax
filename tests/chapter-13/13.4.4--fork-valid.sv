// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: function_fork_valid
:description: function valid fork test
:tags: 13.4.4
:type: simulation elaboration parsing
*/
module top();

function int fun(int val);
  fork
//^^^^ keyword.control.fork.sv
    $display("abc");
    $display("def");
  join_none
//^^^^^^^^^ keyword.control.join_none.sv
  return val + 2;
endfunction

initial
  $display("$d", fun(2));

endmodule
