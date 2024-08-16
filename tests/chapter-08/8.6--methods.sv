// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: methods
:description: class method test
:tags: 8.6
*/
module class_tb ();
  class test_cls;
    int a;
    task test_method(int val);
//  ^^^^ storage.type.task.sv
//       ^^^^^^^^^^^ entity.name.function.sv
//                  ^ punctuation.section.group.begin.sv
//                   ^^^ entity.name.type.int.sv
//                       ^^^ variable.other.sv
//                          ^ punctuation.section.group.end.sv
      $display("test_method");
      a += val;
    endtask
//  ^^^^^^ storage.type.task.sv
  endclass

  test_cls test_obj;

  initial begin
    test_obj = new;

    test_obj.a = 12;

    $display(test_obj.a);

    test_obj.test_method(9);
//           ^^^^^^^^^^^ entity.name.function.sv
//                       ^ constant.numeric.integer.sv

    $display(test_obj.a);
  end
endmodule
