// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: force_release
:description: force-release statements test
:tags: 10.6.2
*/
module flop(clk, q, d);

input clk, d;
output q;
logic q;

always @(posedge clk)
  q <= d;

endmodule

module top(clk, q, d, f1, f0);

input clk, d, f1, f0;
output q;
wire q;

flop u_flop (.*);

always @(f1 or f0)
  if (f0)
    force u_flop.q = 0;
//  ^^^^^ keyword.control.force.sv
  else if (f1)
    force u_flop.q = 1;
//  ^^^^^ keyword.control.force.sv
  else
    release u_flop.q;
//  ^^^^^^^ keyword.control.release.sv

endmodule
