// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: interface_instantiation
:description: instantiating an interface class
:should_fail_because: instantiating an interface class
:tags: 8.26.5
:type: simulation elaboration
*/
module class_tb ();
  interface class ihello;
    pure virtual function void hello();
  endclass

  ihello obj;

  initial begin
    obj = new;
//        ^^^ entity.name.function.sv
  end
endmodule
