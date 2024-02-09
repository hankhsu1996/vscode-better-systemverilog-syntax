// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case_production_statements_0
:description: randcase case statement test
:type: simulation elaboration parsing
:tags: 18.17.3
*/

function int F();
    int x;
    int switch = 1;
    randsequence( main )
      main : case (switch)
//           ^^^^ keyword.control.case.sv
          0 : zero;
          1 : first;
          2 : second;
          default : third;
      endcase;
//    ^^^^^^^ keyword.control.endcase.sv
      zero : { x = 0; };
      first : { x = 10; };
      second : { x = 2; };
      third : { x = 3; };
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
