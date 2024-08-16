// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: illegal_forward_def_implements
:description: implementing forward typedef for an interface class should fail
:should_fail_because: implementing forward typedef for an interface class should fail
:tags: 8.26.4
:type: simulation elaboration
*/
module class_tb ();
  typedef interface class ihello;
//^^^^^^^ keyword.control.typedef.sv
//        ^^^^^^^^^ storage.type.interface.sv
//                  ^^^^^ storage.type.class.sv
//                        ^^^^^^ entity.name.type.sv

  class Hello implements ihello;
    virtual function void hello(ihello::int_t val);
//                              ^^^^^^ entity.name.namespace.sv
//                                    ^^ punctuation.separator.scope-resolution.sv
//                                      ^^^^^ entity.name.type.sv
      $display("hello world %d", val);
    endfunction
  endclass

  interface class ihello;
    typedef int int_t;
    pure virtual function void hello(int_t val);
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
