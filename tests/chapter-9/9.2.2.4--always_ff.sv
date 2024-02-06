// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: always_ff
:description: always_ff check
:tags: 9.2.2.4
*/
module always_tb ();
  wire a = 0;
  wire b = 0;
  reg q = 0;
  always_ff @(posedge a)
//^^^^^^^^^ keyword.control.always_ff.sv
//          ^^^^^^^^^^^^ meta.event-control.sv
//          ^ punctuation.definition.event.sv
//           ^ punctuation.section.group.begin.sv
//            ^^^^^^^ keyword.other.posedge.sv
//                    ^ variable.other.sv
//                     ^ punctuation.section.group.end.sv
    q <= b;
//    ^^ keyword.operator.assignment.sv
endmodule
