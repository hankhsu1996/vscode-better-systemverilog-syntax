// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: repeat_production_statements_0
:description: repeat statement test
:type: simulation elaboration parsing
:tags: 18.17.4
*/

function int F();
    int x;
    randsequence( main )
      main : first;
      first : repeat(10) second;
//            ^^^^^^ keyword.control.repeat.sv
      second : { x = x + 1; };
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
