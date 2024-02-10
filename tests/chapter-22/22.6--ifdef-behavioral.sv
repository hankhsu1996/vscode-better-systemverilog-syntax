// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.6--ifdef-behavioral
:description: Test
:tags: 22.6
:type: preprocessing
*/
module and_op (a, b, c);
  output a;
  input b, c;
  `ifdef behavioral
//^^^^^^ keyword.control.ifdef.sv
//       ^^^^^^^^^^ meta.preprocessor.macro-name.sv
    wire a = b & c;
  `else
//^^^^^ keyword.control.else.sv
    and a1 (a,b,c);
  `endif
//^^^^^^ keyword.control.endif.sv
endmodule
