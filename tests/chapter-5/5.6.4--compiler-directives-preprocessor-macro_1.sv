// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: compiler_directives_preprocessor_macro_1
:description: Read preprocessing macro from template (:defines: marker)
:tags: 5.6.4
:defines: VAR_1=2 VAR_2=5
*/

module top();
int a = `VAR_1 + `VAR_2;
//      ^^^^^^ meta.preprocessor.macro-name.sv
//               ^^^^^^ meta.preprocessor.macro-name.sv
initial begin
    if (a == 7)
    $display(":assert:(True)");
    else
    $display(":assert:(False)");
end

endmodule
