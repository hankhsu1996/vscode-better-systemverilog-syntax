// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: enum_typedef
:description: typedef enum tests
:tags: 6.19.1
*/
module top();
  typedef enum {a, b, c} e;
//^^^^^^^ keyword.control.typedef.sv
//        ^^^^ storage.type.enum.sv
//             ^^^^^^^^^ meta.enum.sv
//                       ^ entity.name.type.sv
  e val;
//^ entity.name.type.sv
//  ^^^ variable.other.sv
endmodule
