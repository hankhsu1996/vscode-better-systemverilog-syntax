// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: const
:description: const test
:tags: 6.20.6
*/
module top();
  class test_cls;
    int a;
    task test_method(int val);
      $display("test_method");
      a += val;
    endtask
  endclass

// For simplicity, we don't treat the variable as a constant in the syntax highlight. It is just a regular variable.

  const test_cls test_obj = new;
//^^^^^ storage.modifier.const.sv
//      ^^^^^^^^ entity.name.type.sv
//               ^^^^^^^^ variable.other.sv
//                        ^ keyword.operator.assignment.sv
//                          ^^^ entity.name.function.sv
endmodule
