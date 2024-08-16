// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: builtin-methods-string
:description: Check if built-in methods can be called
:tags: 5.13
*/
module top();
  string a = "test";

  initial begin
    $display("length check: %d\n", a.len());
//                                 ^ variable.other.sv
//                                  ^ punctuation.accessor.dot.sv
//                                   ^^^ entity.name.function.sv
//                                      ^ punctuation.section.group.begin.sv
//                                       ^ punctuation.section.group.end.sv
  end
endmodule
