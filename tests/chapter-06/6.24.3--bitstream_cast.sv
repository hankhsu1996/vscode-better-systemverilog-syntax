// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: bitstream_cast
:description: bitstream cast function
:tags: 6.24.3
*/
module top();
  struct packed {logic [7:0] a; logic [7:0] b; logic [15:0] c;} s;
  integer a = integer'(s);
//^^^^^^^ entity.name.type.sv
//        ^ variable.other.sv
//          ^ keyword.operator.assignment.sv
//            ^^^^^^^ entity.name.type.sv
//                   ^ punctuation.definition.casting.sv
//                    ^ punctuation.section.group.begin.sv
//                     ^ variable.other.sv
//                      ^ punctuation.section.group.end.sv
endmodule
