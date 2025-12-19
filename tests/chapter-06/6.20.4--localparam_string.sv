// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: localparam_string
:description: localparam string typed
:tags: 6.20.4
*/
module top();
  localparam s1 = "foo";
  localparam string s2 = "bar";
//^^^^^^^^^^ storage.modifier.localparam.sv
//           ^^^^^^ entity.name.type.sv
//                  ^^ variable.other.constant.sv
endmodule
