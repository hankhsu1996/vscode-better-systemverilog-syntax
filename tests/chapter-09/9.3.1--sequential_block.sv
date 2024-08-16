// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: sequential_block
:description: sequential block check
:tags: 9.3.1
*/
module sequential_tb ();
  reg a = 0;
  reg b = 0;
  reg c = 0;
  initial begin
//        ^^^^^ keyword.control.begin.sv
    a = 1;
    b = a;
    c = b;
  end
//^^^ keyword.control.end.sv
endmodule
