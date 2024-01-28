// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: attributes-operator
:description: Assing attributes to an operator
:tags: 5.12
*/

module top();
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] c;

  initial begin
    a = b + (* mode = "cla" *) c;
//          ^^^^^^^^^^^^^^^^^^ meta.attribute-instance.sv
//          ^^ punctuation.definition.attribute.begin.sv
//             ^^^^ entity.other.attribute-name.sv
//                  ^ keyword.operator.assignment.sv
//                    ^^^^^ string.quoted.double.sv
//                          ^^ punctuation.definition.attribute.end.sv
  end

endmodule
