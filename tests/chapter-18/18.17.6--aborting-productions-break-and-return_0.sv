// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: aborting_productions_break_and_return_0
:description: break statement test
:type: simulation elaboration parsing
:tags: 18.17.6
*/

function int F();
    int x;
    int break_on = 1;

    randsequence( main )
      main : first second third;
      first : { x = x + 10; };
      second : { if(break_on == 1) break; } fourth;
//                                 ^^^^^ keyword.control.break.sv
      third : { x = x + 10; };
      fourth : { x = x + 15; };
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (10 == %d)", x);
   end
endmodule
