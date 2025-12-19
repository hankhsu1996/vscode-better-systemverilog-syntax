// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: instantiation
:description: simple class instantiation test
:tags: 8.4
*/
module class_tb ();
  class test_cls;
//^^^^^ storage.type.class.sv
//      ^^^^^^^^ entity.name.type.sv
//              ^ punctuation.terminator.semicolon.sv
    int a;
//  ^^^ entity.name.type.sv
//      ^ variable.other.sv
  endclass
//^^^^^^^^ storage.type.class.sv

  test_cls test_obj;
//^^^^^^^^ entity.name.type.sv
//         ^^^^^^^^ variable.other.sv

  initial begin
    if(test_obj == null) test_obj = new;
//                 ^^^^ constant.language.null.sv
//                                  ^^^ entity.name.function.sv
  end
endmodule
