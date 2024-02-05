// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implemented_class_handle
:description: it should be possible to assign object handle to a variable of an implemented class type
:tags: 8.26.5
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
  endclass
  
  class Hello implements ihello;
    virtual function void hello();
      $display("hello world");
    endfunction
  endclass

  Hello obj;
  ihello iobj;

  initial begin
    obj = new;
    iobj = obj;
  end
endmodule
