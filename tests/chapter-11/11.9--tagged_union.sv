// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: tagged_union
:description: tagged union test
:tags: 11.9
*/
module top();

typedef union tagged {
  void Invalid;
  int Valid;
} u_int;

u_int a, b;

initial begin
  a = tagged Invalid;
//    ^^^^^^ keyword.other.tagged.sv
//           ^^^^^^^ variable.other.constant.sv
  b = tagged Valid(42);
//    ^^^^^^ keyword.other.tagged.sv
//           ^^^^^ variable.other.constant.sv
//                ^^^ meta.parenthesis.sv
end

endmodule
