// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: tagged_union_member_access_sim
:description: tagged union member access simulation test
:type: simulation elaboration parsing
:tags: 11.9
*/
module top();

typedef union tagged {
  void Invalid;
  int Valid;
} u_int;

u_int a;

int b;

initial begin
  a = tagged Valid(42);
//    ^^^^^^ keyword.other.tagged.sv
//           ^^^^^ variable.other.enummember.sv
//                ^^^ meta.parenthesis.sv
  b = a.Valid;
  $display(":assert: (42 == %d)", b);
end

endmodule
