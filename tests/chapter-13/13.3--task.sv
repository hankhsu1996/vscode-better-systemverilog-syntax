// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: task
:description: task test
:tags: 13.3
:type: simulation elaboration parsing
*/
module top();

  task mytask;
//^^^^ storage.type.task.sv
//     ^^^^^^ entity.name.function.sv
    $display(":assert: True");
  endtask
//^^^^^^^ storage.type.endtask.sv

// The code snippet demonstrates a limitation in the syntax highlighting extension.
// In this case, the task "myTask" is not recognized as a function because it is not preceded by a "(".
// As a result, the syntax highlighting may not accurately represent the code structure.
// Semantic highlighting, which provides more accurate highlighting based on code semantics, is not available in this extension.

initial
  mytask;
//^^^^^^ variable.other.sv
endmodule
