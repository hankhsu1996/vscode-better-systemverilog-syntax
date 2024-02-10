// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: fmonitor_task
:description: $fmonitor test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

logic a;

int fd;
string str = "abc";

initial begin
  fd = $fopen("tmp.txt", "w");
  $fmonitor(fd, a);
//^^^^^^^^^ entity.name.function.sv
//          ^^ variable.other.sv
//              ^ variable.other.sv
  $fmonitorb(fd, a);
//^^^^^^^^^^ entity.name.function.sv
//           ^^ variable.other.sv
//               ^ variable.other.sv
  $fmonitoro(fd, a);
//^^^^^^^^^^ entity.name.function.sv
//           ^^ variable.other.sv
//               ^ variable.other.sv
  $fmonitorh(fd, a);
//^^^^^^^^^^ entity.name.function.sv
//           ^^ variable.other.sv
//               ^ variable.other.sv
end

final
  $fclose(fd);

endmodule
