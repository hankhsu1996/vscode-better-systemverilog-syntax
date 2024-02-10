// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: write_boh
:description: $write test
:tags: 21.2
:type: simulation elaboration parsing
*/
module top();

initial begin
  int val = 1234;
  $writeb(val);
//^^^^^^^ entity.name.function.sv
//        ^^^ variable.other.sv
  $writeo(val);
//^^^^^^^ entity.name.function.sv
//        ^^^ variable.other.sv
  $writeh(val);
//^^^^^^^ entity.name.function.sv
//        ^^^ variable.other.sv
end

endmodule
