// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: scope_resolution
:description: access static method using scope resolution operator
:tags: 8.23
*/
module class_tb ();
  class test_cls;
    static int id = 0;
//  ^^^^^^ storage.modifier.static.sv
    static function int next_id();
//  ^^^^^^ storage.modifier.static.sv
      ++id;
      next_id = id;
    endfunction
  endclass

  initial begin
    $display(test_cls::next_id());
//           ^^^^^^^^ entity.name.namespace.sv
//                   ^^ punctuation.separator.scope-resolution.sv
//                     ^^^^^^^ entity.name.function.sv
    $display(test_cls::next_id());
  end
endmodule
