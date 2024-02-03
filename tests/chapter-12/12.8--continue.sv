// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: jump_continue
:description: A module testing continue statement
:tags: 12.8
:type: simulation elaboration parsing
*/
module jump_tb ();
  initial begin
    for (int i = 0; i < 256; i++)begin
      if(i < 255)
        continue;
//      ^^^^^^^^ keyword.control.continue.sv
      $display(":assert:(%d == 255)", i);
    end

  end
endmodule
