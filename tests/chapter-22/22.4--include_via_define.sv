// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.4--include_via_define
:description: Though not well documented, real world code does `defines that cause includes
:tags: 22.4
:type: preprocessing parsing
*/
`define DO_INCLUDE(FN) `include FN
//<------- keyword.control.define.sv
//      ^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                 ^^ variable.other.sv
//                     ^^^^^^^^ keyword.control.include.sv
//                              ^^ variable.other.sv

// Check that multiple define references don't throw a multiple `include-on-line error
`DO_INCLUDE("dummy_include.sv") `DO_INCLUDE("dummy_include.sv")
//<----------- meta.preprocessor.macro-name.sv
//          ^^^^^^^^^^^^^^^^^^ string.quoted.double.sv
//                              ^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                          ^^^^^^^^^^^^^^^^^^ string.quoted.double.sv

// Check that ifdefs
`ifdef NEVER
//<------ keyword.control.ifdef.sv
//     ^^^^^ meta.preprocessor.macro-name.sv
  `DO_INCLUDE("SHOULD_NOT_BE_INCLUDED")
//^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//            ^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.sv
`endif
//<------ keyword.control.endif.sv

module top ();
endmodule
