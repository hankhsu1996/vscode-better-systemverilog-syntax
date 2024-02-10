// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: fdisplay_task
:description: $fdisplay test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

int fd;
string str = "abc";

initial begin
  fd = $fopen("tmp.txt", "w");
  $fdisplay(fd, str);
//^^^^^^^^^ entity.name.function.sv
//          ^^ variable.other.sv
//              ^^^ variable.other.sv
end

final
  $fclose(fd);

endmodule
