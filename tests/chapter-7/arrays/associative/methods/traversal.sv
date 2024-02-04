// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: associative-arrays-arg-traversal
:description: Test support of associative arrays methods
:tags: 7.9.8 7.9
:type: simulation elaboration parsing
*/
module top ();

string map[ byte ];
byte ix;
int rc;

initial begin
  map[ 1000 ] = "a";
  rc = map.first( ix );
//         ^^^^^ entity.name.function.sv
  $display(":assert: ( ('%0d' == '1') and ('%b' == '11101000') )", rc, ix);
end

endmodule
