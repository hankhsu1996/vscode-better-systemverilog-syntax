// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: name_conflict_resolved
:description: resolved interface class method name conflict
:tags: 8.26.6.1
:type: simulation elaboration parsing
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^ entity.name.function.sv
  endclass

  interface class itest;
    pure virtual function void hello();
//  ^^^^ storage.modifier.pure.sv
//       ^^^^^^^ storage.modifier.virtual.sv
//               ^^^^^^^^ storage.type.function.sv
//                        ^^^^ entity.name.type.void.sv
//                             ^^^^^ entity.name.function.sv
  endclass

  class Hello implements ihello, itest;
    virtual function void hello();
      $display(":assert:(True)");
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
