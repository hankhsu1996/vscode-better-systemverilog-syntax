// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-string
:description: Test associative arrays support
:tags: 7.8.2 7.8
*/
module top ();

int arr [ string ];
//        ^^^^^^ entity.name.type.sv

endmodule
