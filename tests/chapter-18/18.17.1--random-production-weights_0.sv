// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_production_weights_0
:description: randsequence weights test
:type: simulation elaboration parsing
:tags: 18.17.1
*/

function int F();
    int x;
    randsequence( main )
        main : first := 1 | second := 0;
//             ^^^^^ variable.other.sv
//                   ^^ keyword.operator.assignment.sv
//                      ^ constant.numeric.integer.sv
//                        ^ punctuation.separator.bar.sv
//                          ^^^^^^ variable.other.sv
//                                 ^^ keyword.operator.assignment.sv
//                                    ^ constant.numeric.integer.sv
        first : { x = 2; };
        second : { x = -2; };
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (2 == %d)", x);
   end
endmodule
