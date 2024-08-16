// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: constructor_super
:description: class constructor super test
:tags: 8.7 8.17
*/
module class_tb ();
  class super_cls;
    int s = 2;
    function new(int def = 3);
      s = def;
    endfunction
  endclass
  class test_cls extends super_cls;
//               ^^^^^^^ storage.modifier.extends.sv
    int a;
    function new(int def = 42);
      super.new(def + 3);
//    ^^^^^ variable.language.super.sv
//         ^ punctuation.accessor.dot.sv
//          ^^^ entity.name.function.sv
      a = def;
    endfunction
  endclass

  test_cls test_obj;

  initial begin
    test_obj = new(37);

    $display(test_obj.a);
    $display(test_obj.s);
  end
endmodule
