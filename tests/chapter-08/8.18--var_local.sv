// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: var_local
:description: class with local variable
:tags: 8.18
*/
module class_tb ();
  class a_cls;
    local int a_loc = 2;
//  ^^^^^ storage.modifier.local.sv
//        ^^^ entity.name.type.sv
//            ^^^^^ variable.other.sv
//                  ^ keyword.operator.assignment.sv
//                    ^ constant.numeric.integer.sv
  endclass
endmodule
