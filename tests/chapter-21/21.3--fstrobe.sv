// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: fstrobe_task
:description: $fstrobe test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

logic clk;
logic a;

int fd;

always @(posedge clk) begin
  $fstrobe(fd, a);
//^^^^^^^^ entity.name.function.sv
//         ^^ variable.other.sv
//             ^ variable.other.sv
  $fstrobe(fd, a);
  $fstrobe(fd, a);
  $fstrobe(fd, a);
end

initial begin
  fd = $fopen("tmp.txt", "w");
end

final
  $fclose(fd);

endmodule
