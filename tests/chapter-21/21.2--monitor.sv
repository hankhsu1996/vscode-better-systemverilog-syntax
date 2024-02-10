// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: monitor_task
:description: $monitor test
:tags: 21.2
:type: simulation elaboration parsing
*/
module top();

int a;

initial begin
  $monitoron;
//^^^^^^^^^^ entity.name.function.sv
  $monitor(a);
//^^^^^^^^ entity.name.function.sv
//         ^ variable.other.sv
  $monitorb(a);
//^^^^^^^^^ entity.name.function.sv
//          ^ variable.other.sv
  $monitoro(a);
//^^^^^^^^^ entity.name.function.sv
//          ^ variable.other.sv
  $monitorh(a);
//^^^^^^^^^ entity.name.function.sv
//          ^ variable.other.sv
  $monitoroff;
//^^^^^^^^^^^ entity.name.function.sv
end

endmodule
