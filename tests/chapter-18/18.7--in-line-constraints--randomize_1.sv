// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: in-line_constraints--randomize_1
:description: in-line constraints test - randomize()
:tags: 18.7
*/

class a1;
    rand int x;
endclass

class a2;
    int x, y;

    task do_randomize(a1 obj, int x, int z);
        int result;
        result = obj.randomize() with {x > 0; x < y + z;};
//                               ^^^^ keyword.control.with.sv
    endtask
endclass
