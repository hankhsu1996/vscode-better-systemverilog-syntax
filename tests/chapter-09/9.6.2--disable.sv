// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: disable
:description: disable block
:tags: 9.6.2
*/
module fork_tb ();
  reg a = 0;
  reg b = 0;
  initial begin: block
    a = 1;
    disable block;
//  ^^^^^^^ keyword.control.disable.sv
//          ^^^^^ variable.other.sv
    b = 1;
  end
endmodule
