// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: task_static
:description: static task test
:tags: 13.3.1
:type: simulation elaboration parsing
*/
module top();

  task static mytask(int test);
//^^^^ storage.type.task.sv
//     ^^^^^^ storage.modifier.static.sv
//            ^^^^^^ entity.name.function.sv
    int a = 0;
    a++;
    if (test)
      $display(":assert:(%d != 1)", a);
    else
      $display(":assert:(%d == 1)", a);
  endtask

initial
  begin
    mytask(0);
    mytask(1);
    mytask(1);
    mytask(1);
  end

endmodule
