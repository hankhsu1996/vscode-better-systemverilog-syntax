// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: identifiers
:description: Identifiers that should be accepted
:tags: 5.6
*/
module identifiers();
  reg shiftreg_a;
//    ^^^^^^^^^^ variable.other.sv
  reg busa_index;
//    ^^^^^^^^^^ variable.other.sv
  reg error_condition;
//    ^^^^^^^^^^^^^^^ variable.other.sv
  reg merge_ab;
//    ^^^^^^^^ variable.other.sv
  reg _bus3;
//    ^^^^^ variable.other.sv
  reg n$657;
//    ^^^^^ variable.other.sv

  /* Should also be case sensitive,
   * should not cause a conflict here
   */
  reg sensitive;
//    ^^^^^^^^^ variable.other.sv
  reg Sensitive;
//    ^^^^^^^^^ variable.other.sv
endmodule : identifiers
