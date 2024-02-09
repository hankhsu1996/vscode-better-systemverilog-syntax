// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: local_scope_resolution_0
:description: local:: scope resolution test
:tags: 18.7.1
*/

class a;
    rand int x;
endclass

function int F(a obj, int x);
    F = obj.randomize() with {x < local::x; };
//                                ^^^^^ entity.name.namespace.sv
//                                     ^^ punctuation.separator.scope-resolution.sv
endfunction
