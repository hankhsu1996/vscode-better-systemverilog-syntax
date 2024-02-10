// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: file_tasks
:description: $fopen and $fclose test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

initial begin
  int fd;
  fd = $fopen("tmp.txt", "w");
//     ^^^^^^ entity.name.function.sv
//            ^^^^^^^^^ string.quoted.double.sv
//                       ^^^ string.quoted.double.sv
  $fclose(fd);
//^^^^^^^ entity.name.function.sv
//        ^^ variable.other.sv
end

endmodule
