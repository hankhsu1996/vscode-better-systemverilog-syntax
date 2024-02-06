// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: disable_other
:description: disable other task
:tags: 9.6.2
*/
module fork_tb ();
  reg a = 0;
  reg b = 0;
  reg c = 0;
  initial fork
    begin: block
//       ^ punctuation.separator.colon.sv
//         ^^^^^ variable.other.block.sv
      #10 a = 1;
      #10 b = 1;
    end
    #15 disable block;
//  ^ punctuation.definition.delay.sv
//   ^^ constant.numeric.integer.sv
//      ^^^^^^^ keyword.control.disable.sv
//              ^^^^^ variable.other.sv
  join
//^^^^ keyword.control.join.sv
endmodule
