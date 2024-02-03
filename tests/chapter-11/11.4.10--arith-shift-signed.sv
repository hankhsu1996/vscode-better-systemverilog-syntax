// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: arith_shift_signed
:description: arithmetic shift operator test
:type: simulation elaboration parsing
:tags: 11.4.10
*/
module top();

logic signed [7:0] a, b, c;

initial begin
  a = -120; // 128 + 8
  b = (a <<< 3);
//    ^^^^^^^^^ meta.parenthesis.sv
//       ^^^ keyword.operator.binary.sv
  c = (a >>> 3);
//    ^^^^^^^^^ meta.parenthesis.sv
//       ^^^ keyword.operator.binary.sv

  $display(":assert: (  64 == %d)", b);
  $display(":assert: ( -15 == %d)", c);
end

endmodule
