// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implicit_port_connection
:description: implicit port connection tests
:tags: 6.10
*/
module top();
  wire a = 1;
  wire b = 0;
  wire d;

  test mod(a, b, c);
//^^^^ entity.name.type.sv
//     ^^^ variable.other.sv

  assign d = c;
endmodule

module test(input a, input b, output c);
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.list-of-port-declarations.sv
//         ^ punctuation.section.group.begin.sv
//          ^^^^^ storage.modifier.input.sv
//                ^ variable.other.sv
//                 ^ punctuation.separator.comma.sv
//                   ^^^^^ storage.modifier.input.sv
//                         ^ variable.other.sv
//                          ^ punctuation.separator.comma.sv
//                            ^^^^^^ storage.modifier.output.sv
//                                   ^ variable.other.sv
//                                    ^ punctuation.section.group.end.sv
//                                     ^ punctuation.terminator.semicolon.sv
  assign c = a | b;
endmodule
