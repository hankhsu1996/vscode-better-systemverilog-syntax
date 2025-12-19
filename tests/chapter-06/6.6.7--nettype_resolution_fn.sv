// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: nettype_resolution_fn
:description: user-defined nettype with resolution function tests
:tags: 6.6.7
*/
module top();
  function automatic real real_sum (input real driver[]);
    real_sum = 0.0;
    foreach (driver[i])
      real_sum += driver[i];
  endfunction

  nettype real real_net with real_sum;
//^^^^^^^ keyword.control.nettype.sv
//        ^^^^ entity.name.type.sv
//             ^^^^^^^^ entity.name.type.sv
//                      ^^^^ keyword.other.with.sv
//                           ^^^^^^^^ entity.name.function.sv
//                                   ^ punctuation.terminator.semicolon.sv
endmodule
