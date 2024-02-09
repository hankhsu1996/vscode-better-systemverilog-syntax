// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: random_sequence_generation_randsequence_0
:description: randsequence test
:type: simulation elaboration parsing
:tags: 18.17
*/

function int F();
    int x;
    randsequence( main )
//  ^^^^^^^^^^^^ keyword.control.randsequence.sv
//              ^ punctuation.section.group.begin.sv
//                ^^^^ variable.other.sv
//                     ^ punctuation.section.group.end.sv
        main : first second done;
//      ^^^^ variable.other.sv
//           ^ punctuation.separator.colon.sv
//             ^^^^^ variable.other.sv
//                   ^^^^^^ variable.other.sv
//                          ^^^^ variable.other.sv
//                              ^ punctuation.terminator.semicolon.sv
        first : { x = x + 1; };
//      ^^^^^ variable.other.sv
//            ^ punctuation.separator.colon.sv
//                ^ variable.other.sv
//                    ^ variable.other.sv
//                        ^ constant.numeric.integer.sv
        second : { x = x + 2; };
        done : { x = x + 3; };
    endsequence
//  ^^^^^^^^^^^ keyword.control.endsequence.sv
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (6 == %d)", x);
   end
endmodule
