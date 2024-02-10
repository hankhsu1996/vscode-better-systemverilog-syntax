// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.9--unconnected_drive-invalid-2
:description: Test unconnected drive macro with argument other than pull0 and pull1
:should_fail_because: The directive `unconnected_drive takes one of two arguments - pull1 or pull0
:tags: 22.9
:type: simulation elaboration
*/
`unconnected_drive pull2
//<------------------ keyword.control.unconnected-drive.sv
//                 ^^^^^ variable.other.sv
`nounconnected_drive
