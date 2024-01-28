// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: begin-keywords
:description: Begin keywords check
:tags: 5.6.4
*/

`begin_keywords "1364-2001" // use IEEE Std 1364-2001 Verilog keywords
//<--------------- keyword.control.begin-keywords.sv
//              ^^^^^^^^^^^ string.quoted.double.sv
module b_kw();
  reg logic; // OK: "logic" is not a keyword in 1364-2001
endmodule
`end_keywords
//<------------- keyword.control.end-keywords.sv
