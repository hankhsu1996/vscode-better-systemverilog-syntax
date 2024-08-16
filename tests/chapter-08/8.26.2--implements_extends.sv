// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: implements_extends
:description: class both implementing and extending
:tags: 8.26.2
*/
module class_tb ();
  interface class ihello;
//^^^^^^^^^ storage.type.interface.sv
//          ^^^^^ storage.type.class.sv
//                ^^^^^^ entity.name.type.sv
    pure virtual function void hello();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
  endclass
//^^^^^^^^ storage.type.class.sv

  interface class itest;
//^^^^^^^^^ storage.type.interface.sv
//          ^^^^^ storage.type.class.sv
//                ^^^^^ entity.name.type.sv
    pure virtual function void test();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv

  endclass

  class base;
    function method();
      $display("method");
    endfunction
  endclass

  class Hello extends base implements ihello, itest;
//^^^^^ storage.type.class.sv
//      ^^^^^ entity.name.type.sv
//            ^^^^^^^ storage.modifier.extends.sv
//                    ^^^^ entity.name.type.sv
//                         ^^^^^^^^^^ storage.modifier.implements.sv
//                                    ^^^^^^ entity.name.type.sv
//                                          ^ punctuation.separator.comma.sv
//                                            ^^^^^ entity.name.type.sv
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
    obj.method();
    obj.hello();
    obj.test();
  end
endmodule
