// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case_production_statements_0_fail
:description: randcase case statement test
:should_fail_because: switch variable not declared
:type: elaboration
:tags: 18.17.3
*/

function int F();
    int x;
    randsequence( main )
      main : case (switch)
//           ^^^^ keyword.control.case.sv
          0 : zero;
          1 : first;
          2 : second;
          default : third;
      endcase;
//    ^^^^^^^ keyword.control.endcase.sv
      zero2 : { x = 0; };
      first : { x = 10; };
      second : { x = 2; };
      third : { x = 3; };
    endsequence

    return x;
endfunction
