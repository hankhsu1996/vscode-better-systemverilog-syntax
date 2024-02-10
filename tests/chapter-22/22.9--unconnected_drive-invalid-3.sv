// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.9--unconnected_drive-invalid-3
:description: Test
:should_fail_because: use a strength keyword with `nounconnected_drive macro
:tags: 22.9
:type: simulation elaboration
*/
`unconnected_drive pull0
`nounconnected_drive pull0
