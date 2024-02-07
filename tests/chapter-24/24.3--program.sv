// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: program_construct
:description: program construct test
:tags: 24.3
:type: simulation elaboration parsing
*/
  program prog(input wire a, input wire b);
//^^^^^^^ storage.type.program.sv
//        ^^^^ entity.name.type.sv
//            ^ punctuation.section.group.begin.sv
//             ^^^^^ storage.modifier.input.sv
//                   ^^^^ entity.name.type.wire.sv
//                        ^ variable.other.sv
//                         ^ punctuation.separator.comma.sv
//                           ^^^^^ storage.modifier.input.sv
//                                 ^^^^ entity.name.type.wire.sv
//                                      ^ variable.other.sv
//                                       ^ punctuation.section.group.end.sv
//                                        ^ punctuation.terminator.semicolon.sv
    initial $display(":assert: (%d == %d)", a, b);
//  ^^^^^^^ keyword.control.initial.sv
//          ^^^^^^^^ entity.name.function.sv
  endprogram
//^^^^^^^^^^ storage.type.program.sv

module top();

  wire a = 1;
  wire b = 1;

  prog p(a, b);
//^^^^ entity.name.type.sv
//     ^ variable.other.sv
//      ^ punctuation.section.group.begin.sv
//       ^ variable.other.sv
//        ^ punctuation.separator.comma.sv
//          ^ variable.other.sv
//           ^ punctuation.section.group.end.sv
//            ^ punctuation.terminator.semicolon.sv

endmodule
