// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: wrong-identifiers
:description: Identifiers that should not be accepted
:should_fail_because: The first character of a simple identifier shall not be a digit or $
:tags: 5.6
*/
module identifiers();
  reg $dollar;
//    ^^^^^^^ - variable.other.sv
  reg 0number;
//    ^^^^^^^ - variable.other.sv
endmodule
