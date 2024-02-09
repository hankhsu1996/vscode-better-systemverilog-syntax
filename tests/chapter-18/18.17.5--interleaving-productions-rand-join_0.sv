// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: interleaving_productions_rand_join_0
:description: rand join statement test
:type: simulation elaboration parsing
:tags: 18.17.5
*/

function int F();
    int x;
    randsequence( main )
      main : rand join first second;
//           ^^^^ keyword.control.rand.sv
//                ^^^^ keyword.control.join.sv
      first : { x = x + 20; };
      second : { x = x - 10; };
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
