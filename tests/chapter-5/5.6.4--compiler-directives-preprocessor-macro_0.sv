// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: compiler_directives_preprocessor_macro_0
:description: Read preprocessing macro from template (:defines: marker)
:tags: 5.6.4
:type: preprocessing
:defines: TEST_VAR
*/

`ifdef TEST_VAR
`else
TEST_VAR parsed not correctly from template
`endif
