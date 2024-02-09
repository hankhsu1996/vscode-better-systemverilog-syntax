// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_weighted_case_randcase_2
:description: randcase test
:tags: 18.16
:type: simulation elaboration parsing
*/

function int F(int y);
    int a;
    randcase
        y - y : a = 5;
        y + y : a = 10;
    endcase
    return a;
endfunction

module top;
   int x;
   initial begin
      x = F(6);
      $display(":assert: (10 == %d)", x);
   end
endmodule
