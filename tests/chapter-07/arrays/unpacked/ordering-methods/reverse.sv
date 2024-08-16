// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ordering-methods-reverse
:description: Test support of reverse method on unpacked arrays
:tags: 7.12.2 7.4.2
:type: simulation elaboration parsing
*/
module top ();

string s[] = { "hello", "sad", "world" };

initial begin
  $display(":assert: (('%s' == 'hello') and ('%s' == 'sad') and ('%s' == 'world'))",
    s[0], s[1], s[2]);
  s.reverse;
//  ^^^^^^^ entity.name.function.sv
  $display(":assert: (('%s' == 'world') and ('%s' == 'sad') and ('%s' == 'hello'))",
    s[0], s[1], s[2]);
end

endmodule
