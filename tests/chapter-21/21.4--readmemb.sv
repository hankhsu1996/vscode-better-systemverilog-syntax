// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: readmemb_task
:description: $readmemb test
:tags: 21.4
:type: parsing
*/
module top();

logic [31:0] mem0 [1023:0];
string fname0 = "test0.mem";

initial begin
  $readmemb(fname0, mem0);
//^^^^^^^^^ entity.name.function.sv
//          ^^^^^^ variable.other.sv
//                  ^^^^ variable.other.sv
end

endmodule
