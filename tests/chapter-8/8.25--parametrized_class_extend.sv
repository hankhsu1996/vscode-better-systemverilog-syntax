// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parametrized_class_extend
:description: parametrized class extending another parametrized class
:tags: 8.25
*/
module class_tb ();
  class base_cls #(int b = 20);
//               ^^^^^^^^^^^^^ meta.parameter-port-list.sv
    int a;
  endclass

  class ext_cls #(int e = 25) extends base_cls #(5);
//              ^^^^^^^^^^^^^ meta.parameter-port-list.sv
//                                             ^ punctuation.definition.parameter-assignment-or-delay.sv
//                                              ^ punctuation.section.group.begin.sv
//                                               ^ constant.numeric.integer.sv
//                                                ^ punctuation.section.group.end.sv
    int c;
  endclass

  ext_cls #(15) inst;
//        ^ punctuation.definition.parameter-assignment-or-delay.sv
//          ^^ constant.numeric.integer.sv


  initial begin
    inst = new;
  end
endmodule
