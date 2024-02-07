// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: mailbox_non_blocking
:description: non-blocking mailbox test
:tags: 15.4
:type: simulation elaboration parsing
*/
module top();

mailbox #(string) m;

initial begin
  string msg = "abc";
  string r;
  string r_peek;
  int i;
  m = new();
  i = m.try_put(msg);
//      ^^^^^^^ entity.name.function.sv
  m.peek(r_peek);
  $display(":assert: (%d == 1)", m.num());
  i = m.try_get(r);
//      ^^^^^^^ entity.name.function.sv
  $display(":assert: ('%s' == '%s')", r, r_peek);
end

endmodule
