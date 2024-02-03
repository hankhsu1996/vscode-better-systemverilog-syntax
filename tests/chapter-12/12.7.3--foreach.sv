// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: foreach_loop
:description: A module testing foreach loop
:tags: 12.7.3
*/
module foreach_tb ();
  string test [4] = '{"111", "222", "333", "444"};
  initial begin
    foreach(test[i])
//  ^^^^^^^^^^^^^^^^ meta.loop-statement.sv
//  ^^^^^^^ keyword.control.foreach.sv
//          ^^^^ variable.other.sv
//              ^^^ meta.dimension.sv
    $display(i, test[i]);
  end
endmodule
