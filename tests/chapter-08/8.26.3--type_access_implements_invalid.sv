// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: type_access_implements_invalid
:description: access types from implemented class
:should_fail_because: typedefs are not inherited by implements operator
:tags: 8.26.3
:type: simulation elaboration
*/
module class_tb ();
  interface class ihello;
    typedef int int_t;
    pure virtual function void hello(int_t val);
  endclass
  
  class Hello implements ihello;
    virtual function void hello(int_t val);
      $display("hello world %d", val);
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
