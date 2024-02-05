// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constructor
:description: class constructor test
:tags: 8.7
:type: simulation elaboration parsing
*/
module class_tb ();
  class test_cls;
    int a;
    function new();
      a = 42;
    endfunction
  endclass

  initial begin
    test_cls test_obj = new;
//                      ^^^ entity.name.function.sv

    $display(":assert:(%d == 42)", test_obj.a);
  end
endmodule
