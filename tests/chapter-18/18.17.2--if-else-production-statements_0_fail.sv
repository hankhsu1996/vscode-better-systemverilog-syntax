// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_else_production_statements_0_fail
:description: randcase if-else test
:should_fail_because: switch variable not declared
:type: elaboration
:tags: 18.17.2
*/

function int F();
    int x;
    randsequence( main )
      main : first;
      first : { if(switch ) x = 10; else x = 5; };
//              ^^ keyword.control.if.sv
//                 ^^^^^^ variable.other.sv
//                                ^ punctuation.terminator.semicolon.sv
//                                  ^^^^ keyword.control.else.sv
    endsequence
    return x;
endfunction
