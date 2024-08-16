// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: type_access_implements
:description: access interface class type with scope resolution operator
:tags: 8.26.3
:type: simulation elaboration parsing
*/
module class_tb ();
  interface class ihello;
    typedef int int_t;
    pure virtual function void hello(int_t val);
  endclass
  
  class Hello implements ihello;
    virtual function void hello(ihello::int_t val);
      $display(":assert:(%d == 12)", val);
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello(12);
  end
endmodule
