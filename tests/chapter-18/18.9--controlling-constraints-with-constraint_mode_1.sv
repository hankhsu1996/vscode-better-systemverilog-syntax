// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: controlling_constraints_with_constraint_mode_1
:description: constraint_mode() test
:should_fail_because: The constraint_mode() method is built-in and cannot be overridden.
:tags: 18.8
:type: simulation elaboration
*/

class a;
    rand int x;
    function int constraint_mode();
//               ^^^^^^^^^^^^^^^ entity.name.function.sv
        return 1;
    endfunction
endclass
