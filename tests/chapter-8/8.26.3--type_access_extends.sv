// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: type_access_extends
:description: accessing types from extended interface class
:tags: 8.26.3
*/
module class_tb ();
  interface class ihello;
    typedef int int_t;
//  ^^^^^^^ keyword.control.typedef.sv
//          ^^^ entity.name.type.int.sv
//              ^^^^^ entity.name.type.sv
    pure virtual function void hello(int_t val);
  endclass

  interface class ihello_ex extends ihello;
//^^^^^^^^^ storage.type.interface.sv
//          ^^^^^ storage.type.class.sv
//                ^^^^^^^^^ entity.name.type.sv
//                          ^^^^^^^ storage.modifier.extends.sv
//                                  ^^^^^^ entity.name.type.sv
    pure virtual function void hello_ex(int_t v1, int_t v2);
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^^^^ entity.name.function.sv
//                                     ^ punctuation.section.group.begin.sv
//                                      ^^^^^ entity.name.type.sv
//                                            ^^ variable.other.sv
//                                              ^ punctuation.separator.comma.sv
//                                                ^^^^^ entity.name.type.sv
//                                                      ^^ variable.other.sv
//                                                        ^ punctuation.section.group.end.sv
  endclass
endmodule
