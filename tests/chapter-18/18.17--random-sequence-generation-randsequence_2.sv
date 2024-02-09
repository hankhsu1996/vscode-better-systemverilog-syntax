// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_sequence_generation_randsequence_2
:description: randsequence test
:type: simulation elaboration parsing
:tags: 18.17
*/

function int F();
    int x;
    randsequence( main )
        main : first | second;
//             ^^^^^ variable.other.sv
//                   ^ punctuation.separator.bar.sv
//                     ^^^^^^ variable.other.sv
        first : { x = -2; };
        second : { x = 2; };
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      if (x != 2 && x != -2) $stop;
   end
endmodule
