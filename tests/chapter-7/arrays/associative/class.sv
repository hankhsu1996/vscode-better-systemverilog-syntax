// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-class
:description: Test associative arrays support
:tags: 7.8.3 7.8
*/
module top ();

class C;
  int x;
endclass

// The grammar does not provide a way to distinguish between a parameter and a class type, so semantic analysis is needed.
int arr [ C ];
//        ^ variable.other.constant.sv

endmodule
