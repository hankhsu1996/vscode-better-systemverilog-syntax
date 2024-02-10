// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_21
:description: Test
:should_fail_because: text specified for macro text shall not be split across string literals
:tags: 22.5.1
:type: preprocessing
*/
`define first_half "start of string
module top ();
initial $display(`first_half end of string");
endmodule
