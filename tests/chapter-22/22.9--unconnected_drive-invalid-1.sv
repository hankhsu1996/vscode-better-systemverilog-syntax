// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.9--unconnected_drive-invalid-1
:description: Test
:should_fail_because: The directive `unconnected_drive takes one of two arguments - pull1 or pull0.
:tags: 22.9
:type: simulation elaboration
*/
`unconnected_drive
//<------------------ keyword.control.unconnected-drive.sv
`nounconnected_drive
