// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: post_randomize_method_0
:description: post_randomize() method test
:tags: 18.6.2
*/

class a;
    rand int b;
    int d;

    constraint c { b == 5; }
    function void post_randomize();
//                ^^^^^^^^^^^^^^ entity.name.function.sv
        d = 20;
    endfunction
endclass
