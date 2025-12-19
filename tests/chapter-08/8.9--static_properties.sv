// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: static_properties
:description: static class properties test
:tags: 8.9
*/
module class_tb ();
  class test_cls;
    static int s = 24;
//  ^^^^^^ storage.modifier.static.sv
//         ^^^ entity.name.type.sv
  endclass

  test_cls test_obj0;
  test_cls test_obj1;

  initial begin
    test_obj0 = new;
    test_obj1 = new;

    test_obj0.s = 12;
    $display(test_obj0.s);
    test_obj0.s = 13;
    $display(test_obj1.s);
  end
endmodule
