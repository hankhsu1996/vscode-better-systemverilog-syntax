// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: var_protected
:description: class with protected variable
:tags: 8.18
*/
module class_tb ();
  class a_cls;
    protected int a_prot = 2;
//  ^^^^^^^^^ storage.modifier.protected.sv
//            ^^^ entity.name.type.int.sv
//                ^^^^^^ variable.other.sv
//                       ^ keyword.operator.assignment.sv
//                         ^ constant.numeric.integer.sv
  endclass
endmodule
