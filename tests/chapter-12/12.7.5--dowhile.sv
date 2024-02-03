// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dowhile_loop
:description: A module testing do..while loop
:tags: 12.7.5
*/
module dowhile_tb ();
  string test [4] = '{"111", "222", "333", "444"};
  initial begin
    int i = 0;
    do begin
//  ^^ keyword.control.do.sv
      $display(i, test[i]);
      i++;
    end while(test[i] != "222");
//      ^^^^^^^^^^^^^^^^^^^^^^^ meta.loop-statement.sv
//      ^^^^^ keyword.control.while.sv

  end
endmodule
