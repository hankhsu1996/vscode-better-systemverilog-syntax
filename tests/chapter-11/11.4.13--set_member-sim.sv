// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: set_member_sim
:description: inside operator simulation test
:type: simulation elaboration parsing
:tags: 11.4.13
*/
module top();

int a = 12;

initial begin
  $display(":assert: (1 == %d)", a inside {2, 4, 6, 8, 10, 12});
//                                 ^^^^^^ keyword.control.inside.sv
//                                        ^^^^^^^^^^^^^^^^^^^^ meta.concatenation.sv
end

endmodule
