// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assignment
:description: object assignment
:tags: 8.12
*/
module class_tb ();
  class test_cls;
    int a;
    task test_method(int val);
      $display("test_method");
      a += val;
    endtask
  endclass

  test_cls test_obj0;
  test_cls test_obj1;

  initial begin
    test_obj0 = new;
    test_obj1 = test_obj0;

    test_obj0.a = 12;

    $display(test_obj0.a);

    test_obj0.test_method(9);

    $display(test_obj1.a);
  end
endmodule
