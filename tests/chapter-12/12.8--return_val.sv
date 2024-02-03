// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: jump_return_expr
:description: A module testing return <expr> statement
:tags: 12.8
*/
module jump_tb ();
  function int fun(input int a);
    return a * 3;
//  ^^^^^^ keyword.control.return.sv
  endfunction
  initial begin
    for (int i = 0; i < 256; i++)begin
      $display(fun(i));
    end
  end
endmodule
