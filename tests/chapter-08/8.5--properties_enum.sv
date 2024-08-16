// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: properties_enum
:description: enum defined inside class
:tags: 8.5
*/
module class_tb ();
  class test_cls;
    typedef enum {A = 10, B = 20, C = 30, D = 1} e_type;
//  ^^^^^^^ keyword.control.typedef.sv
//          ^^^^ storage.type.enum.sv
//               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum.sv
//                                               ^^^^^^ entity.name.type.sv
  endclass

  test_cls test_obj;

  initial begin
    test_obj = new;
    $display(test_obj.C);
  end
endmodule
