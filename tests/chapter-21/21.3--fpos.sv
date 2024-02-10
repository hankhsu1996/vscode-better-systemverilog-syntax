// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: file_pos_tasks
:description: $fseek, $ftell and $rewind test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

initial begin
  int fd;
  fd = $fopen("tmp.txt", "w");
  $display(":assert: (%d == 0)", $ftell(fd));
//                               ^^^^^^ entity.name.function.sv
//                                      ^^ variable.other.sv
  $fseek(fd, 12, 0);
//^^^^^^ entity.name.function.sv
//       ^^ variable.other.sv
//           ^^ constant.numeric.integer.sv
//               ^ constant.numeric.integer.sv
  $display(":assert: (%d == 12)", $ftell(fd));
  $rewind(fd);
//^^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 0)", $ftell(fd));
  $fclose(fd);
end

endmodule
