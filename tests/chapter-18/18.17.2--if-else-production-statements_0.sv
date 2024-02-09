// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_production_statements_0
:description: randcase if-else test
:type: simulation elaboration parsing
:tags: 18.17.2
*/

function int F();
    int x;
    int switch = 1;
    randsequence( main )
      main : first;
      first : { if(switch) x = 10; else x = 5; };
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      if (x != 10) $stop;
   end
endmodule
