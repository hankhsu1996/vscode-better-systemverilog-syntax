// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: static_methods
:description: static class methods test
:tags: 8.10
*/
module class_tb ();
  class test_cls;
    static int id = 0;
    static function int next_id();
//  ^^^^^^ storage.modifier.static.sv
//         ^^^^^^^^ storage.type.function.sv
      ++id;
      next_id = id;
    endfunction
//  ^^^^^^^^^^^ storage.type.function.sv
  endclass

  test_cls test_obj0;
  test_cls test_obj1;

  initial begin
    test_obj0 = new;
    test_obj1 = new;

    $display(test_obj0.next_id());
    $display(test_obj1.next_id());
  end
endmodule
