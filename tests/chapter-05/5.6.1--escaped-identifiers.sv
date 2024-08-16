// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: escaped-identifiers
:description: Escaped identifiers that should be accepted
:tags: 5.6.1
*/
module identifiers();

  reg \busa+index ;
//    ^^^^^^^^^^^ variable.other.sv
  reg \-clock ;
//    ^^^^^^^ variable.other.sv
  reg \***error-condition*** ;
//    ^^^^^^^^^^^^^^^^^^^^^^ variable.other.sv
  reg \net1/\net2 ;
//    ^^^^^^^^^^^ variable.other.sv
  reg \{a,b} ;
//    ^^^^^^ variable.other.sv
  reg \a*(b+c) ;
//    ^^^^^^^^ variable.other.sv

endmodule
