// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: concat_op_sim
:description: concatenation operator simulation test
:type: simulation elaboration parsing
:tags: 11.4.12
*/
module top();

bit [15:0] a;

bit [7:0] b = 8'h89;
bit [7:0] c = 8'h12;

initial begin
  a = {b, c};
//    ^^^^^^ meta.concatenation.sv
//    ^ punctuation.section.braces.begin.sv
//     ^ variable.other.sv
//      ^ punctuation.separator.comma.sv
//        ^ variable.other.sv
//         ^ punctuation.section.braces.end.sv
  $display(":assert: (0x8912 == %d)", a);
end

endmodule
