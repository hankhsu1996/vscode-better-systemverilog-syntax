// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: disabling-random-variables-with-rand_mode_4
:description: rand_mode() test
:should_fail_because: The rand_mode() method is built-in and cannot be overridden.
:tags: 18.8
:type: simulation elaboration
*/

class a1;
    rand int x;
    function int rand_mode();
//               ^^^^^^^^^ entity.name.function.sv
        return 1;
    endfunction
endclass
