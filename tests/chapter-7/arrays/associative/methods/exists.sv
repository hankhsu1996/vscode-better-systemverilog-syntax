// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-exists
:description: Test support of associative arrays methods (exists)
:tags: 7.9.3 7.9
:type: simulation elaboration parsing
*/
module top ();

int map [ string ];

initial begin
  map[ "hello" ] = 1;
  map[ "sad" ] = 2;
  map[ "world" ] = 3;
  $display(":assert: (%d == 1)", map.exists( "sad" ));
//                                   ^^^^^^ entity.name.function.sv
  $display(":assert: (%d == 0)", map.exists( "happy" ));
//                                   ^^^^^^ entity.name.function.sv
end

endmodule
