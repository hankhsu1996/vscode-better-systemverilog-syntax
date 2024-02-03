// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: jump_break
:description: A module testing break statement
:tags: 12.8
:type: simulation elaboration parsing
*/
module jump_tb ();
  initial begin
    int i;
    for (i = 0; i < 256; i++)begin
      if(i > 100)
        break;
//      ^^^^^ keyword.control.break.sv
    end
    $display(":assert:(%d == 101)", i);
  end
endmodule
