// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: ungetc_function
:description: $ungetc test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

int fd;

initial begin
  fd = $fopen("tmp.txt", "w");
  $ungetc(123, fd);
//^^^^^^^ entity.name.function.sv
//        ^^^ constant.numeric.integer.sv
//             ^^ variable.other.sv
  $display(":assert: (%d == %d)", 123, $fgetc(fd));
end

final
  $fclose(fd);

endmodule
