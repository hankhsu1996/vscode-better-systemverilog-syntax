// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: abstract_class_inst
:description: instantiating abstract class
:should_fail_because: instantiating abstract class
:tags: 8.21
:type: simulation elaboration
*/
module class_tb ();
  virtual class base_cls;
//^^^^^^^ storage.modifier.virtual.sv
//        ^^^^^ storage.type.class.sv
//              ^^^^^^^^ entity.name.type.sv
    pure virtual function void print();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^ entity.name.function.sv
//                                  ^ punctuation.section.group.begin.sv
//                                   ^ punctuation.section.group.end.sv
  endclass
//^^^^^^^^ storage.type.class.sv

  class test_cls extends base_cls;
    int a = 2;
    virtual function void print();
      $display(a);
    endfunction
  endclass

  base_cls test_obj;

  initial begin
    test_obj = new;

    test_obj.print();
  end
endmodule
