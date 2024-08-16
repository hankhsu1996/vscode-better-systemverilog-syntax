// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: real_bit_select
:description: real bit select tests
:should_fail_because: it is illegal to do bit select on real data type
:tags: 6.12
:type: simulation elaboration
*/
module top();
  real a = 0.5;
  wire [3:0] b;
  wire c;

  assign c = b[a];
//            ^^^ meta.dimension.sv
endmodule
