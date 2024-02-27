// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: clocking_block_signals_fail
:description: clocking block with signals test
:should_fail_because: assigning to net from procedural context
:type: simulation elaboration
:tags: 14.3
*/
module top(input clk, input a, output b, output c);

  clocking ck1 @(posedge clk);
//^^^^^^^ storage.type.clocking.sv
//         ^^^ variable.other.sv
//             ^^^^^^^^^^^^^^ meta.clocking-event.sv
//             ^ punctuation.definition.event.sv
//              ^ punctuation.section.group.begin.sv
//               ^^^^^^^ keyword.other.posedge.sv
//                       ^^^ variable.other.sv
//                          ^ punctuation.section.group.end.sv
//                           ^ punctuation.terminator.semicolon.sv
    default input #10ns output #5ns;
//  ^^^^^^^ keyword.control.default.sv
//          ^^^^^ storage.modifier.input.sv
//                ^ punctuation.definition.delay.sv
//                 ^^ constant.numeric.integer.sv
//                   ^^ constant.numeric.time-unit.sv
//                      ^^^^^^ storage.modifier.output.sv
//                             ^ punctuation.definition.delay.sv
//                              ^ constant.numeric.integer.sv
//                               ^^ constant.numeric.time-unit.sv
//                                 ^ punctuation.terminator.semicolon.sv
    input a;
//  ^^^^^ storage.modifier.input.sv
//        ^ variable.other.sv
//         ^ punctuation.terminator.semicolon.sv
    output b;
//  ^^^^^^ storage.modifier.output.sv
//         ^ variable.other.sv
//          ^ punctuation.terminator.semicolon.sv
    output #3ns c;
//  ^^^^^^ storage.modifier.output.sv
//         ^ punctuation.definition.delay.sv
//          ^ constant.numeric.integer.sv
//           ^^ constant.numeric.time-unit.sv
//              ^ variable.other.sv
//               ^ punctuation.terminator.semicolon.sv
  endclocking
//^^^^^^^^^^^ storage.type.clocking.sv

always_ff @(posedge clk) begin
  b <= a;
  c <= a;
end

endmodule
