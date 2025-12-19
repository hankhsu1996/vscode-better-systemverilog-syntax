// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: type_op_compare
:description: type comparison tests
:tags: 6.23
*/

// The following code snippet contains an expression where it is
// difficult for tmLanguage to determine if it's a type or a constant.
// It is assumed to be a constant because it starts with a big case.

module top #( parameter type T = type(logic[11:0]) )
   ();
   initial begin
      case (type(T))
//          ^^^^^^^ meta.type-reference.sv
//          ^^^^ keyword.other.type.sv
//              ^ punctuation.section.group.begin.sv
//               ^ variable.other.constant.sv
//                ^ punctuation.section.group.end.sv
        type(logic[11:0]) : ;
//      ^^^^^^^^^^^^^^^^^ meta.type-reference.sv
//      ^^^^ keyword.other.type.sv
//          ^ punctuation.section.group.begin.sv
//           ^^^^^ entity.name.type.sv
//                ^^^^^^ meta.dimension.sv
//                      ^ punctuation.section.group.end.sv
        default           : $stop;
      endcase
      if (type(T) == type(logic[12:0])) $stop;
//        ^^^^^^^ meta.type-reference.sv
//                   ^^^^^^^^^^^^^^^^^ meta.type-reference.sv
      if (type(T) != type(logic[11:0])) $stop;
//        ^^^^^^^ meta.type-reference.sv
//                   ^^^^^^^^^^^^^^^^^ meta.type-reference.sv
      if (type(T) === type(logic[12:0])) $stop;
//        ^^^^^^^ meta.type-reference.sv
//                    ^^^^^^^^^^^^^^^^^ meta.type-reference.sv
      if (type(T) !== type(logic[11:0])) $stop;
//        ^^^^^^^ meta.type-reference.sv
//                    ^^^^^^^^^^^^^^^^^ meta.type-reference.sv
      $finish;
   end
endmodule
