// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: aborting_productions_break_and_return_2
:description: return statement test
:type: simulation elaboration parsing
:tags: 18.17.6
*/

function int F();
    int x;
    static int return_on = 1;
    randsequence( main )
      main : first second third;
      first : { x = x + 20; };
      second : { if(return_on == 1) return; x = x + 10; };
      third : { x = x + 5;};
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (25 == %d)", x);
   end
endmodule
