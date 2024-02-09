// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: adding_constraints_to_scope_variables_0
:description: Adding constraints to scope variables—std::randomize() with - test
:tags: 18.12.1
*/

class a;
    function int do_randomize(int y);
        int x, success;
        success = std::randomize(x) with {x > 0; x < y;};
//                ^^^ entity.name.namespace.sv
//                   ^^ punctuation.separator.scope-resolution.sv
//                     ^^^^^^^^^ entity.name.function.sv
//                                  ^^^^ keyword.control.with.sv
        return success;
    endfunction
endclass
