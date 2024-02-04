// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-first
:description: Test support of associative arrays methods (first)
:tags: 7.9.4 7.9
:type: simulation elaboration parsing
*/
module top ();

int map [ string ];
string s;
int rc;

initial begin
  // empty, should return zero
  rc = map.first( s );
//         ^^^^^ entity.name.function.sv
  $display(":assert: (%d == 0)", rc);

  map[ "hello" ] = 1;
  map[ "sad" ] = 2;
  map[ "world" ] = 3;
  rc = map.first( s );
//         ^^^^^ entity.name.function.sv
  $display(":assert: ((%d == 1) and ('%s' == 'hello'))", rc, s);
end

endmodule
