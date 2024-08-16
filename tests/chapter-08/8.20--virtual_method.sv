// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: virtual_method
:description: class with virtual methods
:tags: 8.20
*/
module class_tb ();
  class super_cls;
    int a = 1;
    virtual function void print();
//  ^^^^^^^ storage.modifier.virtual.sv
//          ^^^^^^^^ storage.type.function.sv
      $display("super_cls::a: %d", a);
    endfunction
//  ^^^^^^^^^^^ storage.type.function.sv
  endclass

  class test_cls extends super_cls;
    int a = 2;
    virtual function void print();
//  ^^^^^^^ storage.modifier.virtual.sv
//          ^^^^^^^^ storage.type.function.sv
      $display("test_cls::a: %d", a);
    endfunction
//  ^^^^^^^^^^^ storage.type.function.sv
  endclass

  test_cls test_obj;
  super_cls super_obj;

  initial begin
    test_obj = new;
    super_obj = new;

    test_obj.print();
    super_obj.print();

    super_obj = test_obj;

    test_obj.print();
    super_obj.print();
  end
endmodule


class test_cls extends super_cls;
  virtual task write(uvm_reg_item xx);
//^^^^^^^ storage.modifier.virtual.sv
//        ^^^^ storage.type.task.sv
    $display("test_cls::a: %d", a);
  endtask
endclass
