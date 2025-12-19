// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: instance_constant
:description: class with instance constant variable
:tags: 8.19
*/
module class_tb ();
  class a_cls;
    const int c;
//  ^^^^^ storage.modifier.const.sv
//        ^^^ entity.name.type.sv
//            ^ variable.other.sv
    function new(int val);
      c = 20 * val;
    endfunction
  endclass
endmodule
