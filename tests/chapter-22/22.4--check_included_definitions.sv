// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: 22.4--check_included_definitions
:description: Test
:tags: 22.4
:type: preprocessing parsing
*/
`include "include_directory/defs.sv"
//<-------- keyword.control.include.sv
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.sv
module top ();
initial begin
        $display(":assert:(`TWO_PLUS_TWO == 5)");
//                         ^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
  $display(":assert:('%s' == '%s')", `define_var, "define_var");
//                                   ^^^^^^^^^^^ meta.preprocessor.macro-name.sv
end

endmodule
