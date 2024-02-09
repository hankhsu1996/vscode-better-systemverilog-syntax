// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: in-line_constraints--randomize_3
:description: in-line constraints test - randomize()
:tags: 18.7
*/

class a;
    rand int x;
endclass

function int F(a obj, int y);
    F = obj.randomize() with (x) { x > 0; x < y; };
//                      ^^^^ keyword.control.with.sv
endfunction
