// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: interface
:description: interface test
:tags: 25.3
:top_module: top
*/

  interface test_bus;
//^^^^^^^^^ storage.type.interface.sv
//          ^^^^^^^^ entity.name.type.sv
//                  ^ punctuation.terminator.semicolon.sv
    logic test_pad;
//  ^^^^^ entity.name.type.logic.sv
//        ^^^^^^^^ variable.other.sv
//                ^ punctuation.terminator.semicolon.sv
  endinterface: test_bus
//^^^^^^^^^^^^ storage.type.interface.sv
//            ^ punctuation.separator.colon.sv
//              ^^^^^^^^ entity.name.type.sv


module sub(test_bus iface);
//         ^^^^^^^^ entity.name.type.sv
//                  ^^^^^ variable.other.sv
endmodule

module top;
  test_bus iface();
//^^^^^^^^ entity.name.type.sv
//         ^^^^^ variable.other.sv
//              ^ punctuation.section.group.begin.sv
//               ^ punctuation.section.group.end.sv
  sub sub (.iface);
//^^^ entity.name.type.sv
//    ^^^ variable.other.sv
//        ^ punctuation.section.group.begin.sv
//         ^ punctuation.definition.named-port-connection.sv
//          ^^^^^ variable.parameter.sv
//               ^ punctuation.section.group.end.sv
//                ^ punctuation.terminator.semicolon.sv
endmodule
