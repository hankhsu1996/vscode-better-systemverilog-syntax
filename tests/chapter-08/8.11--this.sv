// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: this
:description: this keyword test
:tags: 8.11
*/
module class_tb ();
  class test_cls;
    int a;
    task test_method(int a);
      $display("test_method");
      this.a += a;
//    ^^^^ variable.language.this.sv
    endtask
  endclass
endmodule
