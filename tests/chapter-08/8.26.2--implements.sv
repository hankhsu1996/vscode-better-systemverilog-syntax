// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implements
:description: implements keyword test
:tags: 8.26.2
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
  endclass

  class Hello implements ihello;
//            ^^^^^^^^^^ storage.modifier.implements.sv
//                       ^^^^^^ entity.name.type.sv
    virtual function void hello();
      $display("hello world");
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
