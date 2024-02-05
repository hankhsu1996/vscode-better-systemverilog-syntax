// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: forward_declaration
:description: class forward declaration test
:tags: 8.27
*/
module class_tb ();
  typedef class C2;
//^^^^^^^ keyword.control.typedef.sv
//        ^^^^^ storage.type.class.sv
//              ^^ entity.name.type.sv

  class C1;
    C2 c;
  endclass

  class C2;
    C1 c;
  endclass
endmodule
