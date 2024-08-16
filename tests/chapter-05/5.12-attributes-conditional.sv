// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: attributes-conditional
:description: Assing attributes to a conditional operator
:tags: 5.12
*/

module top();
  bit a, b, c, d;

  initial begin
    a = b ? (* no_glitch *) c : d;
//          ^^^^^^^^^^^^^^^ meta.attribute-instance.sv
  end

endmodule
