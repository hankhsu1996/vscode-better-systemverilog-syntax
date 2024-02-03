// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: task_automatic
:description: automatic task test
:tags: 13.3.1
:type: simulation elaboration parsing
*/
module top();

  task automatic mytask;
//^^^^ storage.type.task.sv
//     ^^^^^^^^^ storage.modifier.automatic.sv
//               ^^^^^^ entity.name.function.sv
    int a = 0;
    a++;
    $display(":assert:(%d == 1)", a);
  endtask

initial begin
  mytask;
  mytask;
  mytask;
  mytask;
end

endmodule
