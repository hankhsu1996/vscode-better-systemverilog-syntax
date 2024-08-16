// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-num
:description: Test support of associative arrays methods (num)
:tags: 7.9.1 7.9
:type: simulation elaboration parsing
*/
module top ();

int arr [ int ];

initial begin
  $display(":assert: (%d == 0)", arr.num);
//                                   ^^^ entity.name.function.sv
  arr[ 3 ] = 1;
  $display(":assert: (%d == 1)", arr.num);
//                                   ^^^ entity.name.function.sv
  arr[ 16'hffff ] = 2;
  $display(":assert: (%d == 2)", arr.num);
//                                   ^^^ entity.name.function.sv
  arr[ 4'b1000 ] = 3;
  $display(":assert: (%d == 3)", arr.num);
//                                   ^^^ entity.name.function.sv
end

endmodule
