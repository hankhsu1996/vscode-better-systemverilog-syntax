// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_weighted_case_randcase_0
:description: randcase test
:tags: 18.16
:type: simulation elaboration parsing
*/

function int F();
    int a;
    randcase
//  ^^^^^^^^ keyword.control.randcase.sv
        0 : a = 5;
        1 : a = 10;
    endcase
//  ^^^^^^^ keyword.control.endcase.sv
    return a;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (10 == %d)", x);
   end
endmodule
