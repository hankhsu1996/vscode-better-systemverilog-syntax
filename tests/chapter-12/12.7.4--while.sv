// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: while_loop
:description: A module testing while loop
:tags: 12.7.4
*/
module while_tb ();
  string test [4] = '{"111", "222", "333", "444"};
  initial begin
    int i = 0;
    while(test[i] != "222")begin
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.loop-statement.sv
//  ^^^^^ keyword.control.while.sv
//        ^^^^ variable.other.sv
//            ^^^ meta.dimension.sv
//                ^^ keyword.operator.binary.sv
//                   ^^^^^ string.quoted.double.sv
      $display(i, test[i]);
      i++;
    end
  end
endmodule
