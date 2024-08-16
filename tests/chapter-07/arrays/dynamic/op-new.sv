// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: dynamic-arrays-op-new
:description: Test dynamic arrays operator new support
:tags: 7.5.1
:type: simulation elaboration parsing
*/
module top ();

bit [7:0] arr[];

initial begin
  arr = new [ 4 ];
//      ^^^ entity.name.function.sv
//          ^ punctuation.section.brackets.begin.sv
//            ^ constant.numeric.integer.sv
//              ^ punctuation.section.brackets.end.sv
  arr[ 0 ] = 5;
  arr[ 1 ] = 6;
  arr[ 2 ] = 7;
  arr[ 3 ] = 8;
  $display(":assert: ((%d == 5) and (%d == 6) and (%d == 7) and (%d == 8))",
    arr[ 0 ], arr[ 1 ], arr[ 2 ], arr[ 3 ]);
end

endmodule
