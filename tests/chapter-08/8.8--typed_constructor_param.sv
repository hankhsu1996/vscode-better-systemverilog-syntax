// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: typed_constructor_param
:description: typed class constructor with parameters test
:tags: 8.8
*/
module class_tb ();
  class super_cls;
    int s = 2;
    function new(int def = 3);
      s = def;
    endfunction
  endclass

  class test_cls #(int t = 12) extends super_cls;
//               ^^^^^^^^^^^^^ meta.parameter-port-list.sv
    int a;
    function new(int def = 42);
      super.new(def + 3);
      a = def - t;
    endfunction
  endclass

  super_cls super_obj;

  initial begin
    super_obj = test_cls#(.t(23))::new(.def(41));
//              ^^^^^^^^ entity.name.type.sv
//                      ^ punctuation.definition.parameter-assignment-or-delay.sv
//                       ^ punctuation.section.group.begin.sv
//                        ^ punctuation.definition.named-parameter-assignment.sv
//                         ^ variable.parameter.sv
//                          ^ punctuation.section.group.begin.sv
//                           ^^ constant.numeric.integer.sv
//                             ^ punctuation.section.group.end.sv
//                              ^ punctuation.section.group.end.sv
//                               ^^ punctuation.separator.scope-resolution.sv
//                                 ^^^ entity.name.function.sv
//                                    ^ punctuation.section.group.begin.sv
//                                     ^ punctuation.definition.named-parameter-assignment.sv
//                                      ^^^ variable.parameter.sv
//                                         ^ punctuation.section.group.begin.sv
//                                          ^^ constant.numeric.integer.sv
//                                            ^ punctuation.section.group.end.sv
//                                             ^ punctuation.section.group.end.sv

    $display(super_obj.s);
  end
endmodule
