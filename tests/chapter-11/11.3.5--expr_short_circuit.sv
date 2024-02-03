// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: expr_short_circuit
:description: expression short circuiting test
:type: simulation elaboration parsing
:tags: 11.3.5
*/
module top();

logic a = 1;
logic b = 1;
logic c = 0;
logic d;

function int fun(logic a);
  $display(":assert: (False)");
  return a;
endfunction

initial begin
  d = a && (b || fun(c));
//    ^ variable.other.sv
//      ^^ keyword.operator.binary.sv
//         ^ punctuation.section.group.begin.sv
//          ^ variable.other.sv
//            ^^ keyword.operator.binary.sv
//               ^^^ entity.name.function.sv
//                     ^ punctuation.section.group.end.sv
  $display(":assert: (1 == %d)", d);
end

endmodule
