// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-packed-structures
:description: Test packed structures support
:tags: 7.2.1 7.2 7.1
:type: simulation elaboration parsing
*/
module top ();

  struct packed {
//^^^^^^ storage.type.struct.sv
//       ^^^^^^ storage.modifier.packed.sv
  bit [3:0] lo;
//^^^ entity.name.type.sv
//    ^^^^^ meta.dimension.sv
//          ^^ variable.other.sv
  bit [3:0] hi;
} p1;

initial begin
  p1 = 8'h5a;
  $display(":assert: ('%h' == '5a')", p1);
  $display(":assert: (('%h' == 'a') and ('%h' == '5'))", p1.hi, p1.lo);
//                                                       ^^ variable.other.sv
//                                                         ^ punctuation.accessor.dot.sv
//                                                          ^^ variable.other.sv
end

endmodule
