// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: global_constant
:description: class with global constant variable
:tags: 8.19
*/
module class_tb ();
  class a_cls;
    const int c = 12;
//  ^^^^^ storage.modifier.const.sv
//        ^^^ entity.name.type.sv
//            ^ variable.other.sv
//              ^ keyword.operator.assignment.sv
//                ^^ constant.numeric.integer.sv
  endclass
endmodule
