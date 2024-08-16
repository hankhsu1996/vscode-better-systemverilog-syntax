// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: typed_constructor
:description: class typed constructor test
:tags: 8.8
*/
module class_tb ();
  class super_cls;
    int s = 2;
    function new(int def = 3);
      s = def;
    endfunction
  endclass

  class test_cls extends super_cls;
    int a;
    function new(int def = 42);
      super.new(def + 3);
//    ^^^^^ variable.language.super.sv
//         ^ punctuation.accessor.dot.sv
//          ^^^ entity.name.function.sv
      a = def;
    endfunction
  endclass

  test_cls super_obj;

  initial begin
    super_obj = test_cls::new;
//              ^^^^^^^^ entity.name.namespace.sv
//                      ^^ punctuation.separator.scope-resolution.sv
//                        ^^^ entity.name.function.sv

    $display(super_obj.s);
  end
endmodule
