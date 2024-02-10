// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: sscanf_task
:description: $sscanf test
:tags: 21.3
:type: simulation elaboration parsing
*/
module top();

string str = "1234";
int c;

initial begin
  $sscanf(str, "%d", c);
//^^^^^^^ entity.name.function.sv
//        ^^^ variable.other.sv
//             ^^^^ string.quoted.double.sv
//                   ^ variable.other.sv
  $display(":assert: (%d == %s)", c, str);
end

endmodule
