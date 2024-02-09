// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: urandom_range_0
:description: urandom_range() test
:tags: 18.13.2
*/

class a;
    function int do_urandom_range(int unsigned maxval, int unsigned minval);
        int unsigned val;
        val = $urandom_range(maxval, minval);
//            ^^^^^^^^^^^^^^ entity.name.function.sv
        return val;
    endfunction
endclass
