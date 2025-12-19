// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parameter_type_conflict_unresolved
:description: superclass type declaration conflicts must be resolved in subclass
:should_fail_because: superclass type declaration conflicts must be resolved in subclass
:tags: 8.26.6.2
:type: simulation elaboration
*/
module class_tb ();
  interface class ic1#(type T = logic);
//                   ^^^^^^^^^^^^^^^^^ meta.parameter-port-list.sv
//                     ^^^^ storage.type.type.sv
//                          ^ entity.name.type.sv
//                            ^ keyword.operator.assignment.sv
//                              ^^^^^ entity.name.type.sv
    pure virtual function void fn1(T a);
//                                 ^ entity.name.type.sv
//                                   ^ variable.other.sv
  endclass

  interface class ic2#(type T = logic);
    pure virtual function void fn2(T a);
  endclass

  interface class ic3#(type TYPE = logic) extends ic1#(TYPE), ic2#(TYPE);
//                   ^^^^^^^^^^^^^^^^^^^^ meta.parameter-port-list.sv
//                     ^^^^ storage.type.type.sv
//                          ^^^^ entity.name.type.sv
//                               ^ keyword.operator.assignment.sv
//                                 ^^^^^ entity.name.type.sv
//                                        ^^^^^^^ storage.modifier.extends.sv
//                                                ^^^ entity.name.type.sv
//                                                     ^^^^ variable.other.constant.sv
//                                                                 ^^^^ variable.other.constant.sv
  endclass
endmodule
