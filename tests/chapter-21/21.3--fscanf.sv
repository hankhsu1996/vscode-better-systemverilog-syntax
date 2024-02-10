// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: fscanf_task
:description: $fscanf test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

int fd;
int c;

initial begin
  fd = $fopen("tmp.txt", "w");
  $fscanf(fd, "%d", c);
//^^^^^^^ entity.name.function.sv
//        ^^ variable.other.sv
//            ^^^^ string.quoted.double.sv
//                  ^ variable.other.sv
end

final
  $fclose(fd);

endmodule
