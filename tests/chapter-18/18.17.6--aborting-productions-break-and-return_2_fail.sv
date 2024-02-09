// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: aborting_productions_break_and_return_2_fail
:description: return statement test
:should_fail_because: typo in production name
:type: elaboration
:tags: 18.17.6
*/

function int F();
    int x;
    static int return_on = 1;
    randsequence( main )
      main : first secondi third;
      first : { x = x + 20; };
      second : { if(return_on == 1) return; x = x + 10; };
//                                  ^^^^^^ keyword.control.return.sv
      third : { x = x + 5;};
    endsequence
    return x;
endfunction
