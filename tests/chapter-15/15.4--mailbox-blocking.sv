// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: mailbox_blocking
:description: blocking mailbox test
:tags: 15.4
:type: simulation elaboration parsing
*/
module top();

  mailbox #(string) m;
//^^^^^^^ entity.name.type.sv
//        ^ punctuation.definition.parameter-assignment-or-delay.sv
//         ^ punctuation.section.group.begin.sv
//          ^^^^^^ entity.name.type.string.sv
//                ^ punctuation.section.group.end.sv
//                  ^ variable.other.sv
//                   ^ punctuation.terminator.semicolon.sv


initial begin
  string msg = "abc";
  string r;
  string r_peek;
  m = new();
//    ^^^ entity.name.function.sv
  m.put(msg);
//  ^^^ entity.name.function.sv
  m.peek(r_peek);
//  ^^^^ entity.name.function.sv
  $display(":assert: (%d == 1)", m.num());
  m.get(r);
//  ^^^ entity.name.function.sv
  $display(":assert: ('%s' == '%s')", r, r_peek);
end

endmodule
