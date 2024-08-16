// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: parametrized_class_scope_resolution
:description: parametrized class scope resolution
:tags: 8.25.1
*/
module class_tb ();

  class par_cls #(int a = 25);
    parameter int b = 23;
  endclass

  par_cls #(15) inst;

  initial begin
    inst = new;

    $display(par_cls#()::b);
//           ^^^^^^^ entity.name.type.sv
//                  ^ punctuation.definition.parameter-assignment-or-delay.sv
//                   ^ punctuation.section.group.begin.sv
//                    ^ punctuation.section.group.end.sv
//                     ^^ punctuation.separator.scope-resolution.sv
//                       ^ variable.other.sv
  end
endmodule
