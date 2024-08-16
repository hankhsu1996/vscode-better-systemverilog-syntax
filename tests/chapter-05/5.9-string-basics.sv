// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: string-basic
:description: Basic string example
:tags: 5.9 5.3
*/
module top();

  initial begin
    $display("one line");
//           ^^^^^^^^^^ string.quoted.double.sv
//           ^ punctuation.definition.string.begin.sv
//                    ^ punctuation.definition.string.end.sv
  end

endmodule
