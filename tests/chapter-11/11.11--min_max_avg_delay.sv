// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: min_max_avg_delay
:description: minimum, typical and maximum delay expressions test
:tags: 11.11
*/
module top();

initial begin
  #(100:200:300) $display("Done");
//^ punctuation.definition.parameter-assignment-or-delay.sv
// ^ punctuation.section.group.begin.sv
//  ^^^ constant.numeric.integer.sv
//     ^ punctuation.separator.colon.sv
//      ^^^ constant.numeric.integer.sv
//         ^ punctuation.separator.colon.sv
//          ^^^ constant.numeric.integer.sv
//             ^ punctuation.section.group.end.sv
end

endmodule
