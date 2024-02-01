// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: typedef
:description: user types tests
:tags: 6.18
*/
module top();
  typedef logic logic_t;
//^^^^^^^ keyword.control.typedef.sv
//        ^^^^^ entity.name.type.logic.sv
//              ^^^^^^^ entity.name.type.sv
  logic_t a;
//^^^^^^^ entity.name.type.sv
//        ^ variable.other.sv
//         ^ punctuation.terminator.semicolon.sv
endmodule

