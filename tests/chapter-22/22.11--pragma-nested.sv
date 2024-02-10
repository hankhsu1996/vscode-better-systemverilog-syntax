// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.11--pragma-nested
:description: Test
:tags: 22.11
:type: preprocessing
*/
`pragma foo something, somethingelse = 7, "abcdef", ( hello, ( "world", pr = 4, "gm" ) ), a
//<------- keyword.control.pragma.sv
//      ^^^ entity.other.attribute-name.sv
//          ^^^^^^^^^ variable.other.sv
//                     ^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                                   ^ keyword.operator.assignment.sv
//                                     ^ constant.numeric.integer.sv
//                                        ^^^^^^^^ string.quoted.double.sv
//                                                    ^^^^^ variable.other.sv
//                                                             ^^^^^^^ string.quoted.double.sv
//                                                                      ^^ entity.other.attribute-name.sv
//                                                                         ^ keyword.operator.assignment.sv
//                                                                           ^ constant.numeric.integer.sv
//                                                                              ^^^^ string.quoted.double.sv
