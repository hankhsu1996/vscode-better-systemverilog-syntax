// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: partial_implementation
:description: virtual classes can implement their interfaces partially
:tags: 8.26.7
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
    pure virtual function void world();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^ entity.name.function.sv
  endclass

  virtual class vhello implements ihello;
    virtual function void hello();
      $display("hello");
    endfunction
    pure virtual function void world();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^ entity.name.function.sv
  endclass

  class helloworld extends vhello;
    virtual function void world();
      $display("world");
    endfunction
  endclass

  helloworld obj;

  initial begin
    obj = new;

    obj.hello();
    obj.world();
  end
endmodule
