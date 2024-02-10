// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.5.1--define_expansion_1
:description: Test
:tags: 22.5.1
:type: preprocessing
*/
`define D(x,y) initial $display("start", x , y, "end");
//<------ keyword.control.define.sv
//      ^ meta.preprocessor.macro-name.sv
//       ^ punctuation.section.group.begin.sv
//        ^ variable.other.sv
//         ^ punctuation.separator.comma.sv
//          ^ variable.other.sv
//           ^ punctuation.section.group.end.sv
//             ^^^^^^^ keyword.control.initial.sv
//                     ^^^^^^^^ entity.name.function.sv
module top ();
`D( "msg1" , "msg2" )
//<-- meta.preprocessor.macro-name.sv
endmodule
