// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: tagged_union_member_access_inv
:description: invalid tagged union member access test
:should_fail_because: accessing wrong member should result in run-time error
:tags: 11.9
:type: simulation
*/

// This file demonstrates the concept of a tagged union, which is similar to the enum concept in Rust.
// In Rust, enum members such as "Invalid" and "Valid" would be highlighted as enum members.
// Even in the case of "Valid(42)", "Valid" is still considered an enum member.
// The "tagged" keyword in the variable assignment is a unique feature not commonly found in other languages.
// It acts as a storage modifier, modifying the variable itself.
// In this code, we highlight "Invalid" and "Valid" as struct members, treating them as constants if they start with a capital letter, and variables otherwise.
// The "tagged" keyword is highlighted as a special keyword.

module top();

typedef union tagged {
//      ^^^^^ storage.type.union.sv
//            ^^^^^^ storage.modifier.tagged.sv
  void Invalid;
//^^^^ entity.name.type.void.sv
//     ^^^^^^^ variable.other.constant.sv
  int Valid;
//^^^ entity.name.type.int.sv
//    ^^^^^ variable.other.constant.sv
} u_int;

u_int a, b;

int c;

initial begin
  a = tagged Invalid;
//    ^^^^^^ keyword.other.tagged.sv
//           ^^^^^^^ variable.other.constant.sv
  b = tagged Valid(42);
//    ^^^^^^ keyword.other.tagged.sv
//           ^^^^^ variable.other.constant.sv
//                ^^^ meta.parenthesis.sv
  c = a.Valid;
end

endmodule
