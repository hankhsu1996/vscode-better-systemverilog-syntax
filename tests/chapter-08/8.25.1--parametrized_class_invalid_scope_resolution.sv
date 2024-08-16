// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parametrized_class_invalid_scope_resolution
:description: parametrized class invalid scope resolution
:should_fail_because: parametrized class invalid scope resolution
:tags: 8.25.1
:type: simulation elaboration
*/
module class_tb ();

  class par_cls #(int a = 25);
//              ^^^^^^^^^^^^^ meta.parameter-port-list.sv
    parameter int b = 23;
  endclass

  par_cls #(15) inst;
//        ^ punctuation.definition.parameter-assignment-or-delay.sv
//          ^^ constant.numeric.integer.sv

  initial begin
    inst = new;

    $display(par_cls::b);
//           ^^^^^^^ entity.name.namespace.sv
//                  ^^ punctuation.separator.scope-resolution.sv
//                    ^ variable.other.sv
  end
endmodule
