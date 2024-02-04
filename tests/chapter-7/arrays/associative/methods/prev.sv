// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-prev
:description: Test support of associative arrays methods (prev)
:tags: 7.9.7 7.9
:type: simulation elaboration parsing
*/
module top ();

int map [ string ];
string s;
int rc;

initial begin
  map[ "hello" ] = 1;
  map[ "sad" ] = 2;
  map[ "world" ] = 3;

  rc = map.last( s );
//         ^^^^ entity.name.function.sv
  $display(":assert: ((%d == 1) and ('%s' == 'world'))", rc, s);
  rc = map.prev( s );
//         ^^^^ entity.name.function.sv
  $display(":assert: ((%d == 1) and ('%s' == 'sad'))", rc, s);
end

endmodule
