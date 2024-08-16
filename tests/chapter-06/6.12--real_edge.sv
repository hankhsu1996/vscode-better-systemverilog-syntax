// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: real_edge
:description: real edge event tests
:should_fail_because: it is illegal to use edge event controls on real type
:tags: 6.12
:type: simulation elaboration
*/
module top();
  real a = 0.5;
  always @(posedge a)
//^^^^^^ keyword.control.always.sv
//       ^^^^^^^^^^^^ meta.event-control.sv
//       ^ punctuation.definition.event.sv
//        ^ punctuation.section.group.begin.sv
//         ^^^^^^^ keyword.other.posedge.sv
//                 ^ variable.other.sv
//                  ^ punctuation.section.group.end.sv

    $display("posedge");
endmodule
