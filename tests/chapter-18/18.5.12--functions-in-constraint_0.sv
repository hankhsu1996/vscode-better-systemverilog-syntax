// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: functions_in_constraints_0
:description: functions in constraints test
:tags: 18.5.12
*/

class a;
    rand int b1, b2;
    function int F (input int d);
        F=d;
    endfunction

    constraint c1 { b1 == 5; }
    constraint c2 { b2 == F(b1); }
//                        ^ entity.name.function.sv
endclass
