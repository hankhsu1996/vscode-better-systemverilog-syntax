// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parameters
:description: parametrized class test
:tags: 8.5 8.25
:type: simulation elaboration parsing
*/
module class_tb ();
  class test_cls #(parameter a = 12);
//               ^^^^^^^^^^^^^^^^^^^ meta.parameter-port-list.sv
//               ^^ punctuation.section.group.begin.sv
//                 ^^^^^^^^^ storage.modifier.parameter.sv
//                           ^ variable.other.constant.sv
//                             ^ keyword.operator.assignment.sv
//                               ^^ constant.numeric.integer.sv
//                                 ^ punctuation.section.group.end.sv
  endclass


  test_cls #(34) test_obj;
//^^^^^^^^ entity.name.type.sv
//         ^ punctuation.definition.parameter-assignment-or-delay.sv
//          ^ punctuation.section.group.begin.sv
//           ^^ constant.numeric.integer.sv
//             ^ punctuation.section.group.end.sv
//               ^^^^^^^^ variable.other.sv

  initial begin
    test_obj = new;
//             ^^^ entity.name.function.sv
    $display(":assert:(%d == 34)", test_obj.a);
  end
endmodule
