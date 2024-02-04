// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: array-locator-methods-find-first
:description: Test support of array locator methods
:tags: 7.12.1 7.12 7.10
:type: simulation elaboration parsing
*/
module top ();

string s[] = { "hello", "sad", "hello", "world" };
string qs[$];

initial begin
  qs = s.find_first with ( item == "hello" );
//       ^^^^^^^^^^ entity.name.function.sv
//                  ^^^^ keyword.control.with.sv
//                       ^ punctuation.section.group.begin.sv
//                         ^^^^ variable.other.sv
//                              ^^ keyword.operator.binary.sv
//                                 ^^^^^^^ string.quoted.double.sv
//                                         ^ punctuation.section.group.end.sv
  $display(":assert: (%d == 1)", qs.size);
  $display(":assert: ('%s' == 'hello')", qs[0]);
end

endmodule
