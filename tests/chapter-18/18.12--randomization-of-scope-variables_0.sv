// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: randomization_of_scope_variables_0
:description: Randomization of scope variables - std::randomize() test
:tags: 18.12
*/

class a;
    function int do_randomize();
        int x, success;
        success = std::randomize(x);
//                ^^^ entity.name.namespace.sv
//                   ^^ punctuation.separator.scope-resolution.sv
//                     ^^^^^^^^^ entity.name.function.sv

        return success;
    endfunction
endclass
