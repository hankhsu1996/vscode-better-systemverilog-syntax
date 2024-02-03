// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unpack_stream_pad
:description: padded stream unpack test
:tags: 11.4.14.3
*/
module top();

int a = 1;
int b = 2;
int c = 3;

initial begin
  bit [127:0] d = {<<{a, b, c}};
//                ^^^^^^^^^^^^^ meta.concatenation.sv
//                 ^^ keyword.operator.stream.sv
//                   ^^^^^^^^^ meta.concatenation.sv meta.concatenation.sv
end

endmodule
