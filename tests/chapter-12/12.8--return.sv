// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: jump_return
:description: A module testing return statement
:tags: 12.8
*/
module jump_tb ();
  function void fun(input int a);
    $display("a");
    if(a == 21)
      return;
//    ^^^^^^ keyword.control.return.sv
    $display(a);
    return;
  endfunction
  initial begin
    for (int i = 0; i < 256; i++)begin
      fun(i);
    end
  end
endmodule
