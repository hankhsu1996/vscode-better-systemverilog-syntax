// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: function
:description: function test
:tags: 13.4
:type: simulation elaboration parsing
*/
module top();

  function int test(int val);
//^^^^^^^^ storage.type.function.sv
//         ^^^ entity.name.type.sv
//             ^^^^ entity.name.function.sv
//                 ^ punctuation.section.group.begin.sv
//                  ^^^ entity.name.type.sv
//                      ^^^ variable.other.sv
//                         ^ punctuation.section.group.end.sv
    return val + 1;
  endfunction

initial
  $display(":assert: (%d == 2)", test(1));

endmodule
