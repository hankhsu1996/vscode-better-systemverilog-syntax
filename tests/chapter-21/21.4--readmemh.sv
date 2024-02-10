// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: readmemh_task
:description: $readmemh test
:tags: 21.4
:type: parsing
*/
module top();

logic [31:0] mem1 [1023:0];
string fname1 = "test1.mem";

initial begin
  $readmemh(fname1, mem1);
//^^^^^^^^^ entity.name.function.sv
//          ^^^^^^ variable.other.sv
//                  ^^^^ variable.other.sv
end

endmodule
