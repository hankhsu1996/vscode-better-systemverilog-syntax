// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: attributes-case
:description: Assing attributes to a case statement
:tags: 5.12
*/

module top();
  reg [1:0] a;

  bit b;

  initial begin

    (* full_case, parallel_case *)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//  ^^ punctuation.definition.attribute.begin.sv
//     ^^^^^^^^^ entity.other.attribute-name.sv
//              ^ punctuation.separator.comma.sv
//                ^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                              ^^ punctuation.definition.attribute.end.sv
    case (a)
      2'b00 :
        b = 0;
      2'b01, 2'b10 :
        b = 1;
      default :
        b = 0;
    endcase

    (* full_case = 1 *)
//  ^^^^^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//  ^^ punctuation.definition.attribute.begin.sv
//     ^^^^^^^^^ entity.other.attribute-name.sv
//               ^ keyword.operator.assignment.sv
//                 ^ constant.numeric.integer.sv
//                   ^^ punctuation.definition.attribute.end.sv
    (* parallel_case = 1 *)
//  ^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//  ^^ punctuation.definition.attribute.begin.sv
//     ^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                   ^ keyword.operator.assignment.sv
//                     ^ constant.numeric.integer.sv
//                       ^^ punctuation.definition.attribute.end.sv
    case (a)
      2'b00 :
        b = 0;
      2'b01, 2'b10 :
        b = 1;
      default :
        b = 0;
    endcase

    (* full_case, parallel_case = 0 *)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//  ^^ punctuation.definition.attribute.begin.sv
//     ^^^^^^^^^ entity.other.attribute-name.sv
//              ^ punctuation.separator.comma.sv
//                ^^^^^^^^^^^^^ entity.other.attribute-name.sv
//                              ^ keyword.operator.assignment.sv
//                                ^ constant.numeric.integer.sv
//                                  ^^ punctuation.definition.attribute.end.sv
    case (a)
      2'b00 :
        b = 0;
      2'b01, 2'b10 :
        b = 1;
      default :
        b = 0;
    endcase

  end

endmodule
