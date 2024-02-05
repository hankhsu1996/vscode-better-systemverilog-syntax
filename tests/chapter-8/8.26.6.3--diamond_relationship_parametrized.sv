// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: diamond_relationship_parametrized
:description: different specializations of an interface class are treated as unique interface class types
:should_fail_because: different specializations of an interface class are treated as unique interface class types
:tags: 8.26.6.3
:type: simulation elaboration
*/
module class_tb ();
  interface class ibase#(type T = logic);
    pure virtual function void fn(T val);
  endclass

  interface class ic1 extends ibase#(bit);
//                                   ^^^ entity.name.type.bit.sv
    pure virtual function void fn1();
  endclass

  interface class ic2 extends ibase#(string);
//                                   ^^^^^^ entity.name.type.string.sv
    pure virtual function void fn2();
  endclass

  interface class ic3 extends ic1, ic2;
    pure virtual function void fn3();
  endclass
endmodule
