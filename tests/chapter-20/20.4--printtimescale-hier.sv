// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: printtimescale_hier_task
:description: $printtimescale hierarchy test
:tags: 20.4
:type: simulation elaboration parsing
*/

`timescale 1 ms / 1 us

module top();

initial
  $printtimescale(mod0.m);
//^^^^^^^^^^^^^^^ entity.name.function.sv
//                ^^^^ variable.other.sv
//                     ^ variable.other.sv

endmodule

`timescale 1 us / 1 ns

module mod0();
  mod1 m();
endmodule

`timescale 1 ns / 1 ps

module mod1();
initial
  $display("mod1");
endmodule
