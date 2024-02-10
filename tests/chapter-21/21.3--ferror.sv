// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ferror_function
:description: $ferror test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

initial begin
  int fd;
  string str;
  integer errno;
  fd = $fopen("tmp.txt", "w");
  errno = $ferror(fd, str);
//        ^^^^^^^ entity.name.function.sv
//                ^^ variable.other.sv
//                    ^^^ variable.other.sv
  $display(errno);
  $display(str);
  $fclose(fd);
end

endmodule
