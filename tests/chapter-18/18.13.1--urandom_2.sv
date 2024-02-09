// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: urandom_2
:description: urandom() test
:tags: 18.13.1
*/

class a;
    function int unsigned do_urandom(int seed);
        int unsigned x;
        x = $urandom(seed);
//          ^^^^^^^^ entity.name.function.sv
        return x;
    endfunction
endclass
