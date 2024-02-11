// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_20
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define var_nand(dly) nand #dly
//                    ^^^^ entity.name.type.sv
//                         ^ punctuation.definition.delay.sv
//                          ^^^ variable.other.sv
module top ();
`var_nand(2) g121 (q21, n10, n11);
//<--------- meta.preprocessor.macro-name.sv
//        ^ constant.numeric.integer.sv
//                 ^^^ variable.other.sv
//                      ^^^ variable.other.sv
//                           ^^^ variable.other.sv
`var_nand(5) g122 (q22, n10, n11);
endmodule
