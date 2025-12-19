// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: properties
:description: class properties test
:tags: 8.5
:type: simulation elaboration parsing
*/
module class_tb ();
  class test_cls;
    int a;
//  ^^^ entity.name.type.sv
//      ^ variable.other.sv
  endclass

  test_cls test_obj;

  initial begin
    test_obj = new;
//             ^^^ entity.name.function.sv

    test_obj.a = 12;
//          ^ punctuation.accessor.dot.sv
//           ^ variable.other.sv

    $display(":assert:(%d == 12)", test_obj.a);
  end
endmodule
