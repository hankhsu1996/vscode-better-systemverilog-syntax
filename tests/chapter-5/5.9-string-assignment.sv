// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string-assignment
:description: String assignment tests
:tags: 5.9
*/
module top();
  byte        a;
  bit   [7:0] b;
  logic [7:0] c;

  initial begin
    a = "a";
//      ^^^ string.quoted.double.sv
//      ^ punctuation.definition.string.begin.sv
//        ^ punctuation.definition.string.end.sv
    b = "b";
//      ^^^ string.quoted.double.sv
//      ^ punctuation.definition.string.begin.sv
//        ^ punctuation.definition.string.end.sv
    c = "c";
//      ^^^ string.quoted.double.sv
//      ^ punctuation.definition.string.begin.sv
//        ^ punctuation.definition.string.end.sv
  end

endmodule
