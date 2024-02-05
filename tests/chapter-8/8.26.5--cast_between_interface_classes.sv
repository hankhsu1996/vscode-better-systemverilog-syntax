// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cast_between_interface_classes
:description: it should be possible to cast between implemented interface classes
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
    virtual function void hello();
      $display("hello world");
    endfunction
    virtual function void test();
      $display("test");
    endfunction
  endclass

  Hello obj;
  ihello ih_ref;
  itest it_ref;

  initial begin
    obj = new;
    ih_ref = obj;
    $cast(it_ref, ih_ref);
  end
endmodule
