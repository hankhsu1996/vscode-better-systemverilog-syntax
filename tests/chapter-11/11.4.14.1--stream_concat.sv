// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: stream_concat
:description: stream concatenation test
:tags: 11.4.14.1
*/
module top();

int a = {"A", "B", "C", "D"};
int b = {"E", "F", "G", "H"};
logic [63:0] c;

initial begin
  c = {>> 8 {a, b}};
//    ^^^^^^^^^^^^^ meta.concatenation.sv
//     ^^ keyword.operator.stream.sv
//        ^ constant.numeric.integer.sv
//          ^^^^^^ meta.concatenation.sv meta.concatenation.sv
end

endmodule
