// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: super-def-new
:description: Base class has no user-defined constructor, derived class accesses superclass new()
:tags: 8.15
*/
package test_pkg;

  virtual class uvm_void;
//^^^^^^^ storage.modifier.virtual.sv
//        ^^^^^ storage.type.class.sv
  endclass : uvm_void
//^^^^^^^^ storage.type.class.sv
//         ^ punctuation.separator.colon.sv
//           ^^^^^^^^ entity.name.type.sv

  class uvm_object extends uvm_void;
    virtual function void print ();
//  ^^^^^^^ storage.modifier.virtual.sv
//          ^^^^^^^^ storage.type.function.sv
//                   ^^^^ entity.name.type.sv
//                        ^^^^^ entity.name.function.sv
      $display ("Print");
    endfunction : print
//  ^^^^^^^^^^^ storage.type.function.sv
//              ^ punctuation.separator.colon.sv
//                ^^^^^ entity.name.function.sv
  endclass : uvm_object
//^^^^^^^^ storage.type.class.sv
//         ^ punctuation.separator.colon.sv
//           ^^^^^^^^^^ entity.name.type.sv

  class uvm_report_object extends uvm_object;
    function new ();
      super.new ();
    endfunction : new
  endclass : uvm_report_object

endpackage : test_pkg

module m;
  import test_pkg::*;
  uvm_object u0;

   initial begin : test
     #100;
     $display ("Hello World");
     u0 = new ();
     u0.print();

   end : test

endmodule : m

