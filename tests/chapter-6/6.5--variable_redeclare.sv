// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: variable_redeclare
:description: Variable redeclaration tests
:should_fail_because: Variable redeclaration
:tags: 6.5
:type: simulation elaboration
*/
module top();
  reg v;
//^^^ entity.name.type.reg.sv
  wire v;
//^^^^ entity.name.type.wire.sv
endmodule
