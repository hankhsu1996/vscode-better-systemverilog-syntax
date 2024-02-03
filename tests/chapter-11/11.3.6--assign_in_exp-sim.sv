// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: assign_in_exp_sim
:description: assignment in expression simulation test
:type: simulation elaboration parsing
:tags: 11.3.6
*/
module top();

int a;
int b;
int c;

initial begin
  c = a;
  b = (a-=1);
//    ^^^^^^ meta.parenthesis.sv
//    ^ punctuation.section.group.begin.sv
//     ^ variable.other.sv
//      ^^ keyword.operator.assignment.sv
//        ^ constant.numeric.integer.sv
//         ^ punctuation.section.group.end.sv
        $display(":assert: (%d == %d)", b, (c-1));
end

endmodule
