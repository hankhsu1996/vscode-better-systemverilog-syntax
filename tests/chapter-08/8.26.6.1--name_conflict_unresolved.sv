// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: name_conflict_unresolved
:description: unresolved interface class method name conflict
:should_fail_because: unresolved interface class method name conflict
:tags: 8.26.6.1
:type: simulation elaboration
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
  endclass

  interface class itest;
    pure virtual function int hello();
  endclass
  
  class Hello implements ihello, itest;
    virtual function void hello();
      $display("hello world");
    endfunction
  endclass

  Hello obj;

  initial begin
    obj = new;
    obj.hello();
  end
endmodule
