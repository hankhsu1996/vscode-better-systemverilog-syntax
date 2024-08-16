// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: illegal_implements_parameter
:description: implementing parameter that resolves to an interface class is not allowed
:should_fail_because: implementing parameter that resolves to an interface class is not allowed
:tags: 8.26.4
:type: simulation elaboration
*/
module class_tb ();
  interface class ihello;
    typedef int int_t;
    pure virtual function void hello(int_t val);
  endclass

  class Hello #(type T = ihello) implements T;
//            ^^^^^^^^^^^^^^^^^^ meta.parameter-port-list.sv
//                               ^^^^^^^^^^ storage.modifier.implements.sv
//                                          ^ entity.name.type.sv
    virtual function void hello(ihello::int_t val);
      $display("hello world %d", val);
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
