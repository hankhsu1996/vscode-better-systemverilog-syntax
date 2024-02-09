// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: value_passing_between_productions_0
:description: value passing in randsequence test
:type: simulation elaboration parsing
:tags: 18.17.7
*/

function int F();
    int x;
    randsequence( main )
      main : first second third;
//           ^^^^^ variable.other.sv
//                 ^^^^^^ variable.other.sv
//                        ^^^^^ variable.other.sv
      first : add(10);
//    ^^^^^ variable.other.sv
//            ^^^ entity.name.function.sv
      second : add(5);
      third : add(2);
      void add(int y) : { x = x + y; };
//    ^^^^ entity.name.type.void.sv
//         ^^^ entity.name.function.sv
    endsequence
    return x;
endfunction

module top;
   int x;
   initial begin
      x = F();
      $display(":assert: (17 == %d)", x);
   end
endmodule
