// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: package_ref
:description: package reference test
:tags: 26.3
:type: simulation elaboration parsing
*/

  package mypkg;
//^^^^^^^ storage.type.package.sv
//        ^^^^^ entity.name.namespace.sv
//             ^ punctuation.terminator.semicolon.sv
  function int add(int a, b);
//^^^^^^^^ storage.type.function.sv
    return a + b;
  endfunction
//^^^^^^^^^^^ storage.type.function.sv

  endpackage : mypkg
//^^^^^^^^^^ storage.type.package.sv
//           ^ punctuation.separator.colon.sv
//             ^^^^^ entity.name.namespace.sv

module top();

initial $display(":assert: (%d == 4)", mypkg::add(1, 3));
//                                     ^^^^^ entity.name.namespace.sv
//                                          ^^ punctuation.separator.scope-resolution.sv
//                                            ^^^ entity.name.function.sv

endmodule
