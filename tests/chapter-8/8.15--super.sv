// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: super
:description: accessing superclass methods via super
:tags: 8.15
*/
module class_tb ();
  class super_cls;
    int s = 2;
    function int incs();
      ++s;
      incs = s;
    endfunction
    function new(int def = 3);
      s = def;
    endfunction
  endclass

  class test_cls extends super_cls;
    int a;
    function int incs();
      s += 2;
      incs = super.incs();
//           ^^^^^ variable.language.super.sv
//                ^ punctuation.accessor.dot.sv
//                 ^^^^ entity.name.function.sv
    endfunction
    function new(int def = 42);
      super.new(def + 3);
      a = def;
    endfunction
  endclass

  test_cls test_obj;
  super_cls super_obj;

  initial begin
    test_obj = new(37);
    super_obj = test_obj;

    $display(test_obj.s);
    $display(test_obj.incs());
  end
endmodule
