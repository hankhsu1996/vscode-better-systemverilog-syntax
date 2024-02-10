// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_24
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
module top ();
`define HI Hello
`define LO "`HI, world"
//          ^^^ meta.preprocessor.macro-name.sv
`define H(x) "Hello, x"
initial begin
  $display("`HI, world");
//          ^^^ meta.preprocessor.macro-name.sv
  $display(`LO);
//         ^^^ meta.preprocessor.macro-name.sv
  $display(`H(world));
//         ^^ meta.preprocessor.macro-name.sv
end
endmodule
