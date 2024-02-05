// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implements_multiple
:description: class implementing multiple interfaces
:tags: 8.26.2
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
  endclass

  interface class itest;
    pure virtual function void test();
  endclass

  class Hello implements ihello, itest;
//            ^^^^^^^^^^ storage.modifier.implements.sv
//                       ^^^^^^ entity.name.type.sv
//                             ^ punctuation.separator.comma.sv
//                               ^^^^^ entity.name.type.sv

    virtual function void hello();
      $display("hello world");
    endfunction
    virtual function void test();
      $display("test");
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
    obj.test();
  end
endmodule
