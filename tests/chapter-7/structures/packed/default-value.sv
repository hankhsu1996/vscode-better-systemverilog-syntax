// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: packed-structures-default-members-value
:description: Test packed structures default value support
:should_fail_because: members of packed structures shall not be assigned individual default member values.
:tags: 7.2.2
:type: simulation elaboration
*/
module top ();

// Members of unpacked structures containing a union
// as well as members of packed structures shall not be
// assigned individual default member values.

parameter c = 4'h5;

struct packed {
  bit [3:0] lo = c;
//             ^ keyword.operator.assignment.sv
//               ^ variable.other.sv
  bit [3:0] hi;
} p1;

endmodule
