// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-other-types
:description: Test associative arrays support
:tags: 7.8.1
*/
module top ();

typedef struct {
  byte B;
  int I[*];
} Unpkt;


// The grammar does not provide a way to distinguish between a parameter and a class type, so semantic analysis is needed.

int arr [ Unpkt ];
//        ^^^^^ variable.other.constant.sv

endmodule
