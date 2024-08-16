// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constructor_param
:description: class constructor with arguments test
:tags: 8.7
:type: simulation elaboration parsing
*/
module class_tb ();
  class test_cls;
    int a;
    function new(int def = 42);
//  ^^^^^^^^ storage.type.function.sv
//           ^^^ entity.name.function.sv
      a = def;
    endfunction
  endclass

  initial begin
    test_cls test_obj = new(37);
//                      ^^^ entity.name.function.sv

    $display(":assert:(%d == 37)", test_obj.a);
  end
endmodule
